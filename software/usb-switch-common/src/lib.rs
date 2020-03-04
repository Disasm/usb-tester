#![no_std]

pub const USB_DEVICE_VID: u16 = 0xdead;
pub const USB_DEVICE_PID: u16 = 0xbeef;

pub const REQ_SELECT: u8 = 0xff;

#[derive(Debug, Copy, Clone, Eq, PartialEq)]
pub enum ResetStatus {
    /// RESET=0
    Asserted,

    /// RESET=1
    Deasserted,
}

#[derive(Debug, Copy, Clone, Eq, PartialEq)]
pub enum Boot0Status {
    /// BOOT0=1, run from system memory (bootloader)
    Asserted,

    /// BOOT0=0, run from flash
    Deasserted,
}

const MASK_RESET: u16 = 0x0100;
const MASK_BOOT0: u16 = 0x0200;
const MASK_USB: u16 = 0x0400;
const MASK_POWER: u16 = 0x0800;

#[derive(Debug, Default, Eq, PartialEq, Copy, Clone)]
pub struct Selection(pub u16);

impl Selection {
    pub fn channel(&self) -> u8 {
        (self.0 & 0xff) as u8
    }

    pub fn set_channel(&mut self, channel: u8) -> &mut Self {
        self.0 = (self.0 & 0xff00) | (channel as u16);
        self
    }

    pub fn reset(&self) -> ResetStatus {
        match self.0 & MASK_RESET != 0 {
            true => ResetStatus::Asserted,
            false => ResetStatus::Deasserted,
        }
    }

    pub fn set_reset(&mut self, reset: ResetStatus) -> &mut Self {
        match reset {
            ResetStatus::Asserted => self.0 |= MASK_RESET,
            ResetStatus::Deasserted => self.0 &= !MASK_RESET,
        }
        self
    }

    pub fn boot0(&self) -> Boot0Status {
        match self.0 & MASK_BOOT0 != 0 {
            true => Boot0Status::Asserted,
            false => Boot0Status::Deasserted,
        }
    }

    pub fn set_boot0(&mut self, boot0: Boot0Status) -> &mut Self {
        match boot0 {
            Boot0Status::Asserted => self.0 |= MASK_BOOT0,
            Boot0Status::Deasserted => self.0 &= !MASK_BOOT0,
        }
        self
    }

    pub fn usb_enabled(&self) -> bool {
        self.0 & MASK_USB != 0
    }

    pub fn set_usb_enabled(&mut self, enabled: bool) -> &mut Self {
        match enabled {
            true => self.0 |= MASK_USB,
            false => self.0 &= !MASK_USB,
        }
        self
    }

    pub fn power_enabled(&self) -> bool {
        self.0 & MASK_POWER != 0
    }

    pub fn set_power_enabled(&mut self, enabled: bool) -> &mut Self {
        match enabled {
            true => self.0 |= MASK_POWER,
            false => self.0 &= !MASK_POWER,
        }
        self
    }
}
