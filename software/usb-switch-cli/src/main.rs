mod device;
mod stboot;

use libusb::Context;
use crate::device::{open_device, DeviceHandles};
use usb_switch_common::{Selection, ResetStatus, Boot0Status};
use std::str::FromStr;
use crate::stboot::Bootloader;
use std::time::Duration;
use std::thread::sleep;


#[derive(Debug)]
struct Options {
    channel: Option<u8>,
    reset: Option<ResetStatus>,
    boot0: Option<Boot0Status>,
    usb_enabled: Option<bool>,
    power_enabled: Option<bool>,
}

impl Options {
    pub fn from_args() -> Self {
        let args = std::env::args().skip(1);

        let mut options = Options {
            channel: None,
            reset: None,
            boot0: None,
            usb_enabled: None,
            power_enabled: None
        };
        for arg in args {
            if arg.starts_with("+") || arg.starts_with("-") {
                let name = &arg[1..];
                let val = arg.starts_with("+");
                match name {
                    "reset" | "r" => options.reset = Some(if val { ResetStatus::Asserted } else { ResetStatus::Deasserted }),
                    "boot0" | "b" => options.boot0 = Some(if val { Boot0Status::Asserted } else { Boot0Status::Deasserted }),
                    "usb" | "u" => options.usb_enabled = Some(val),
                    "power" | "p" => options.power_enabled = Some(val),
                    _ => panic!("Unknown option {}", arg),
                }
            } else if let Ok(n) = u8::from_str(&arg) {
                options.channel = Some(n);
            }
        }
        options
    }

    pub fn apply(&self, mut selection: Selection) -> Selection {
        if let Some(channel) = self.channel {
            selection.set_channel(channel);
        }
        if let Some(reset) = self.reset {
            selection.set_reset(reset);
        }
        if let Some(boot0) = self.boot0 {
            selection.set_boot0(boot0);
        }
        if let Some(enabled) = self.usb_enabled {
            selection.set_usb_enabled(enabled);
        }
        if let Some(enabled) = self.power_enabled {
            selection.set_power_enabled(enabled);
        }
        selection
    }
}


fn read_device_id(dev: &mut DeviceHandles, channel: Option<u8>) {
    let mut selection = match dev.get_selection() {
        Ok(selection) => selection,
        Err(err) => {
            eprintln!("Failed to get current selection: {}", err);
            return;
        }
    };

    selection.set_reset(ResetStatus::Asserted).set_power_enabled(false).set_usb_enabled(false);
    if let Err(err) = dev.select(selection) {
        eprintln!("Can't poweroff target: {}", err);
        return;
    }

    if let Some(channel) = channel {
        selection.set_channel(channel);
        if let Err(err) = dev.select(selection) {
            eprintln!("Can't switch target: {}", err);
            return;
        }
    }

    sleep(Duration::from_millis(500));

    selection.set_power_enabled(true);
    if let Err(err) = dev.select(selection) {
        eprintln!("Can't poweron target: {}", err);
        return;
    }

    selection.set_boot0(Boot0Status::Asserted).set_reset(ResetStatus::Asserted);
    if let Err(err) = dev.select(selection) {
        eprintln!("Failed to select target: {}", err);
        return;
    }

    selection.set_reset(ResetStatus::Deasserted);
    if let Err(err) = dev.select(selection) {
        eprintln!("Failed to select target: {}", err);
        return;
    }

    sleep(Duration::from_millis(500));

    let serial = serialport::open(&dev.serial_path).unwrap();

    let mut bootloader = Bootloader::new(serial);
    bootloader.init().expect("initialize the bootloader");
    bootloader.cmd_get().unwrap();
    let id = bootloader.get_device_id().unwrap();
    println!("device id: 0x{:x}", id);
}


fn main() {
    let options = Options::from_args();

    let ctx = Context::new().expect("create libusb context");

    let mut dev = match open_device(&ctx) {
        Ok(d) => d,
        Err(err) => {
            eprintln!("Did not find a usb-switch device. Make sure the device is correctly programmed and plugged in. Last error: {}", err);
            return;
        }
    };

    let selection = match dev.get_selection() {
        Ok(selection) => selection,
        Err(err) => {
            eprintln!("Failed to get current selection: {}", err);
            return;
        }
    };

    read_device_id(&mut dev, options.channel);

    let new_selection = options.apply(selection);
    if new_selection != selection {
        if let Err(err) = dev.select(new_selection) {
            eprintln!("Failed to select target: {}", err);
            return;
        }
    }
}
