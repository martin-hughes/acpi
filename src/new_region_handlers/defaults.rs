use crate::AcpiError;
use crate::new_region_handlers::{NewRegionHandlerTrait, SystemIOHandlerTrait, SystemMemoryHandlerTrait};

pub struct DefaultSystemMemoryHandler {}

impl SystemMemoryHandlerTrait for DefaultSystemMemoryHandler {
}

pub struct DefaultMappedIoHandler {}

impl SystemIOHandlerTrait for DefaultMappedIoHandler {}

pub struct DefaultOtherRegionsHandler {}

impl NewRegionHandlerTrait for DefaultOtherRegionsHandler {
    fn read_u8(&self, _dev_address: u64, _base: u64, _offset: u64) -> Result<u8, AcpiError> {
        todo!()
    }

    fn read_u16(&self, _dev_address: u64, _base: u64, _offset: u64) -> Result<u16, AcpiError> {
        todo!()
    }

    fn read_u32(&self, _dev_address: u64, _base: u64, _offset: u64) -> Result<u32, AcpiError> {
        todo!()
    }

    fn read_u64(&self, _dev_address: u64, _base: u64, _offset: u64) -> Result<u64, AcpiError> {
        todo!()
    }

    fn write_u8(&self, _dev_address: u64, _base: u64, _offset: u64, _value: u8) -> Result<(), AcpiError> {
        todo!()
    }

    fn write_u16(&self, _dev_address: u64, _base: u64, _offset: u64, _value: u16) -> Result<(), AcpiError> {
        todo!()
    }

    fn write_u32(&self, _dev_address: u64, _base: u64, _offset: u64, _value: u32) -> Result<(), AcpiError> {
        todo!()
    }

    fn write_u64(&self, _dev_address: u64, _base: u64, _offset: u64, _value: u64) -> Result<(), AcpiError> {
        todo!()
    }
}