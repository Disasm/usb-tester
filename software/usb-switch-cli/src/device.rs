use std::time::Duration;
use libusb::*;
use usb_switch_common::{USB_DEVICE_VID, USB_DEVICE_PID, Selection, REQ_SELECT};
use serialport::SerialPortType;

pub const TIMEOUT: Duration = Duration::from_secs(1);


pub struct DeviceHandles<'a> {
    pub handle: DeviceHandle<'a>,
    pub serial_path: String,
}

impl DeviceHandles<'_> {
    pub fn select(&mut self, selection: Selection) -> Result<()> {
        self.write_control(
            request_type(Direction::Out, RequestType::Vendor, Recipient::Interface),
            REQ_SELECT, selection.0, 2, &[], TIMEOUT
        ).map(|_| ())
    }

    pub fn get_selection(&mut self) -> Result<Selection> {
        let mut buf = [0; 2];
        let n = self.read_control(
            request_type(Direction::In, RequestType::Vendor, Recipient::Interface),
            REQ_SELECT, 0, 2, &mut buf, TIMEOUT
        )?;
        if n == 2 {
            Ok(Selection(u16::from_le_bytes(buf)))
        } else {
            Err(Error::Other)
        }
    }
}

impl<'a> ::std::ops::Deref for DeviceHandles<'a> {
    type Target = DeviceHandle<'a>;

    fn deref(&self) -> &DeviceHandle<'a> {
        &self.handle
    }
}

impl<'a> ::std::ops::DerefMut for DeviceHandles<'a> {
    fn deref_mut(&mut self) -> &mut DeviceHandle<'a> {
        &mut self.handle
    }
}

pub fn open_device(ctx: &Context) -> libusb::Result<DeviceHandles<'_>> {
    for device in ctx.devices()?.iter() {
        let device_descriptor = device.device_descriptor()?;

        if !(device_descriptor.vendor_id() == USB_DEVICE_VID
            && device_descriptor.product_id() == USB_DEVICE_PID) {
            continue;
        }

        let handle = device.open()?;

        let mut serial_path = None;
        for port_info in serialport::available_ports().unwrap() {
            let usb_info = match port_info.port_type {
                SerialPortType::UsbPort(usb_info) => usb_info,
                _ => continue,
            };
            if usb_info.vid == USB_DEVICE_VID && usb_info.pid == USB_DEVICE_PID {
                serial_path = Some(port_info.port_name);
                break;
            }
        }

        let serial_path = serial_path.ok_or(libusb::Error::NoDevice)?;

        //handle.reset()?;

        return Ok(DeviceHandles {
            handle,
            serial_path,
        });
    }

    Err(libusb::Error::NoDevice)
}
