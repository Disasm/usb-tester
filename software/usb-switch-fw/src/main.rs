#![no_std]
#![no_main]

extern crate panic_semihosting;
mod control;

use cortex_m::asm::delay;
use cortex_m_rt::entry;
use embedded_hal::digital::v2::OutputPin;
use stm32f1xx_hal::usb::{Peripheral, UsbBus};
use stm32f1xx_hal::{prelude::*, stm32};
use usb_device::prelude::*;
use usbd_serial::{SerialPort, USB_CLASS_CDC};
use stm32f1xx_hal::serial::{Serial, Config};
use control::ControlClass;
use usb_switch_common::{USB_DEVICE_VID, USB_DEVICE_PID, Boot0Status, ResetStatus, Selection};
use stm32f1xx_hal::gpio::State;


#[entry]
fn main() -> ! {
    let dp = stm32::Peripherals::take().unwrap();

    let mut flash = dp.FLASH.constrain();
    let mut rcc = dp.RCC.constrain();

    let clocks = rcc
        .cfgr
        .use_hse(8.mhz())
        .sysclk(48.mhz())
        .pclk1(24.mhz())
        .freeze(&mut flash.acr);

    assert!(clocks.usbclk_valid());

    // Configure the on-board LED (PC13, green)
    let mut gpioc = dp.GPIOC.split(&mut rcc.apb2);
    let mut led = gpioc.pc13.into_push_pull_output(&mut gpioc.crh);
    led.set_high().ok(); // Turn off

    let mut gpioa = dp.GPIOA.split(&mut rcc.apb2);

    let mut pin_nrst = gpioa.pa0.into_push_pull_output_with_state(&mut gpioa.crl, State::Low);
    let mut pin_boot0 = gpioa.pa1.into_push_pull_output_with_state(&mut gpioa.crl, State::Low);
    let mut pin_usben = gpioa.pa4.into_push_pull_output_with_state(&mut gpioa.crl, State::High);
    let mut pin_pwren = gpioa.pa5.into_push_pull_output_with_state(&mut gpioa.crl, State::Low);
    let mut pin_sel0 = gpioa.pa6.into_push_pull_output_with_state(&mut gpioa.crl, State::Low);

    let mut initial_selection = Selection(0);
    initial_selection.set_power_enabled(false);
    initial_selection.set_usb_enabled(false);
    initial_selection.set_reset(ResetStatus::Asserted);
    initial_selection.set_boot0(Boot0Status::Deasserted);

    // BluePill board has a pull-up resistor on the D+ line.
    // Pull the D+ pin down to send a RESET condition to the USB bus.
    // This forced reset is needed only for development, without it host
    // will not reset your device when you upload new firmware.
    let mut usb_dp = gpioa.pa12.into_push_pull_output(&mut gpioa.crh);
    usb_dp.set_low().ok();
    delay(clocks.sysclk().0 / 100);

    let usb = Peripheral {
        usb: dp.USB,
        pin_dm: gpioa.pa11,
        pin_dp: usb_dp.into_floating_input(&mut gpioa.crh),
    };
    let usb_bus = UsbBus::new(usb);

    let mut serial = SerialPort::new(&usb_bus);
    let mut control = ControlClass::new(&usb_bus, 2, initial_selection);

    let mut usb_dev = UsbDeviceBuilder::new(&usb_bus, UsbVidPid(USB_DEVICE_VID, USB_DEVICE_PID))
        .manufacturer("Fake company")
        .product("Serial port")
        .serial_number("TEST")
        .device_class(USB_CLASS_CDC)
        .build();

    let mut afio = dp.AFIO.constrain(&mut rcc.apb2);
    let tx = gpioa.pa2.into_alternate_push_pull(&mut gpioa.crl);
    let rx = gpioa.pa3.into_floating_input(&mut gpioa.crl);
    let config = Config::default().baudrate(115_200.bps()).parity_even();
    let mut uart = Serial::usart2(dp.USART2, (tx, rx), &mut afio.mapr, config, clocks, &mut rcc.apb1);

    let mut tx_byte = 0;
    let mut tx_pending = false;
    let mut rx_byte = 0;
    let mut rx_pending = false;

    let mut last_selection = control.selection();

    loop {
        if tx_pending {
            if uart.write(tx_byte).is_ok() {
                tx_pending = false;
            }
            // UART writes are Infallible, also do nothing on WouldBlock
        }

        if !rx_pending {
            if let Ok(byte) = uart.read() {
                rx_byte = byte;
                rx_pending = true;
            }
            // Ignore errors, ignore WouldBlock
        }

        if rx_pending {
            if let Ok(len) = serial.write(&[rx_byte]) {
                if len > 0 {
                    rx_pending = false;
                }
            }
            // Ignore USB errors
        }

        if !tx_pending {
            let mut buf = [0];
            if let Ok(len) = serial.read(&mut buf) {
                if len > 0 {
                    tx_byte = buf[0];
                    tx_pending = true;
                }
            }
            // Ignore USB errors
        }

        let selection = control.selection();
        if selection != last_selection {
            last_selection = selection;

            match selection.channel() {
                0 => {
                    pin_sel0.set_low().ok();
                }
                1 => {
                    pin_sel0.set_high().ok();
                }
                _ => {}
            }

            match selection.boot0() {
                Boot0Status::Asserted => {
                    if selection.power_enabled() {
                        pin_boot0.set_high().ok();
                    }
                },
                Boot0Status::Deasserted => {
                    pin_boot0.set_low().ok();
                },
            };

            match selection.reset() {
                ResetStatus::Asserted => {
                    pin_nrst.set_low().ok();
                },
                ResetStatus::Deasserted => {
                    if selection.power_enabled() {
                        pin_nrst.set_high().ok();
                    }
                },
            };

            match selection.power_enabled() {
                true => pin_pwren.set_high().ok(),
                false => pin_pwren.set_low().ok(),
            };

            match selection.usb_enabled() {
                true => pin_usben.set_low().ok(),
                false => pin_usben.set_high().ok(),
            };

            if selection.power_enabled() {
                led.set_low().ok(); // Turn on
            } else {
                led.set_high().ok(); // Turn off
            }
        }

        if !usb_dev.poll(&mut [&mut serial, &mut control]) {
            continue;
        }
    }
}
