use usb_device::class_prelude::*;
use usb_device::Result;
use core::marker::PhantomData;
use usb_switch_common::{Selection, REQ_SELECT};

pub struct ControlClass<B: UsbBus> {
    interface: InterfaceNumber,
    channel_count: u8,
    selection: Selection,
    _marker: PhantomData<B>
}

impl<B: UsbBus> ControlClass<B> {
    pub fn new(alloc: &UsbBusAllocator<B>, channel_count: u8) -> ControlClass<B> {
        ControlClass {
            interface: alloc.interface(),
            channel_count,
            selection: Selection(0),
            _marker: PhantomData
        }
    }

    pub fn selection(&self) -> Selection {
        self.selection
    }
}

impl<B: UsbBus> UsbClass<B> for ControlClass<B> {
    fn get_configuration_descriptors(&self, writer: &mut DescriptorWriter) -> Result<()> {
        writer.interface(self.interface, 0xff, 0, 0)
    }

    fn control_out(&mut self, xfer: ControlOut<B>) {
        let req = xfer.request();

        if !(req.request_type == control::RequestType::Vendor
            && req.recipient == control::Recipient::Interface
            && req.index == u8::from(self.interface) as u16)
        {
            return;
        }

        match req.request {
            REQ_SELECT => {
                let selection = Selection(req.value);
                if selection.channel() >= self.channel_count {
                    xfer.reject().unwrap();
                } else {
                    self.selection = selection;
                    xfer.accept().unwrap();
                }
            }
            _ => { xfer.reject().unwrap(); },
        }
    }

    fn control_in(&mut self, xfer: ControlIn<B>) {
        let req = xfer.request();

        if !(req.request_type == control::RequestType::Vendor
            && req.recipient == control::Recipient::Interface
            && req.index == u8::from(self.interface) as u16)
        {
            return;
        }

        match req.request {
            REQ_SELECT => {
                let val = self.selection.0.to_le_bytes();
                xfer.accept_with(&val).unwrap();
            }
            _ => { xfer.reject().unwrap(); },
        }
    }
}
