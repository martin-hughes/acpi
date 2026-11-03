pub mod defaults;
pub mod io_mapped;

use crate::{
    AcpiError,
    address::{AddressSpace, GenericAddress},
    new_region_handlers::defaults::{
        DefaultMappedIoHandler,
        DefaultOtherRegionsHandler,
        DefaultSystemMemoryHandler,
    },
};

#[derive(Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Debug)]
pub enum RegionSpace {
    SystemMemory,
    SystemIO,
    PciConfig,
    EmbeddedControl,
    SmBus,
    SystemCmos,
    PciBarTarget,
    Ipmi,
    GeneralPurposeIo,
    GenericSerialBus,
    Pcc,
    Oem(u8),
}

impl From<u8> for RegionSpace {
    fn from(value: u8) -> Self {
        match value {
            0 => RegionSpace::SystemMemory,
            1 => RegionSpace::SystemIO,
            2 => RegionSpace::PciConfig,
            3 => RegionSpace::EmbeddedControl,
            4 => RegionSpace::SmBus,
            5 => RegionSpace::SystemCmos,
            6 => RegionSpace::PciBarTarget,
            7 => RegionSpace::Ipmi,
            8 => RegionSpace::GeneralPurposeIo,
            9 => RegionSpace::GenericSerialBus,
            10 => RegionSpace::Pcc,
            _ => RegionSpace::Oem(value),
        }
    }
}

pub struct RegionHandlers<
    SM = DefaultSystemMemoryHandler,
    SIO = DefaultMappedIoHandler,
    T = DefaultOtherRegionsHandler,
> where
    SM: SystemMemoryHandlerTrait,
    SIO: SystemIOHandlerTrait,
    T: NewRegionHandlerTrait,
{
    system_memory: Option<SM>,
    system_io: Option<SIO>,
    pci_config: Option<T>,
    embed_control: Option<T>,
    sm_bus: Option<T>,
    system_cmos: Option<T>,
    pci_bar_target: Option<T>,
    ipmi: Option<T>,
    general_purpose_io: Option<T>,
    generic_serial_bus: Option<T>,
    pcc: Option<T>,
    oem: Option<T>,
}

impl<SM, SIO, T> RegionHandlers<SM, SIO, T>
where
    SM: SystemMemoryHandlerTrait,
    SIO: SystemIOHandlerTrait,
    T: NewRegionHandlerTrait,
{
    pub fn new(system_memory: Option<SM>, system_io: Option<SIO>, others: Option<T>) -> Self {
        Self {
            system_memory,
            system_io,
            pci_config: others,
            embed_control: None,
            sm_bus: None,
            system_cmos: None,
            pci_bar_target: None,
            ipmi: None,
            general_purpose_io: None,
            generic_serial_bus: None,
            pcc: None,
            oem: None,
        }
    }
}

pub trait RegionHandlersTrait {
    fn system_memory(&self) -> Option<&impl SystemMemoryHandlerTrait>;

    fn read_gas(&self, gas: &GenericAddress) -> Result<u64, AcpiError>;
    fn write_gas(&self, gas: &GenericAddress, value: u64);
}

impl<SM, SIO, T> RegionHandlersTrait for RegionHandlers<SM, SIO, T>
where
    SM: SystemMemoryHandlerTrait,
    SIO: SystemIOHandlerTrait,
    T: NewRegionHandlerTrait,
{
    fn system_memory(&self) -> Option<&impl SystemMemoryHandlerTrait> {
        self.system_memory.as_ref()
    }

    fn read_gas(&self, gas: &GenericAddress) -> Result<u64, AcpiError> {
        Ok(match gas.address_space {
            AddressSpace::SystemMemory => {
                let address = gas.address;
                assert_eq!(gas.bit_offset, 0);
                let handler = self.system_memory.as_ref().ok_or(AcpiError::InvalidGenericAddress)?;
                match gas.access_size {
                    8 => handler.read_u8(address)? as u64,
                    16 => handler.read_u16(address)? as u64,
                    32 => handler.read_u32(address)? as u64,
                    64 => handler.read_u64(address)?,
                    _ => panic!("TODO better error"),
                }
            }
            AddressSpace::SystemIo => 0,
            _ => panic!("Not implemented yet"),
        })
    }

    fn write_gas(&self, _gas: &GenericAddress, _value: u64) {
        todo!();
    }
}
/*
impl<SM, SIO, T> NewRegionHandlerTrait for RegionHandlers<SM, SIO, T>
where
    SM: SystemMemoryHandlerTrait,
    SIO: SystemIOHandlerTrait,
    T: NewRegionHandlerTrait,
{
    fn read_u8(&self, dev_address: u64, base: u64, offset: u64) -> Result<u8, AcpiError> {
        todo!()
    }

    fn read_u16(&self, dev_address: u64, base: u64, offset: u64) -> Result<u16, AcpiError> {
        todo!()
    }

    fn read_u32(&self, dev_address: u64, base: u64, offset: u64) -> Result<u32, AcpiError> {
        todo!()
    }

    fn read_u64(&self, dev_address: u64, base: u64, offset: u64) -> Result<u64, AcpiError> {
        todo!()
    }

    fn write_u8(&self, dev_address: u64, base: u64, offset: u64, value: u8) -> Result<(), AcpiError> {
        todo!()
    }

    fn write_u16(&self, dev_address: u64, base: u64, offset: u64, value: u16) -> Result<(), AcpiError> {
        todo!()
    }

    fn write_u32(&self, dev_address: u64, base: u64, offset: u64, value: u32) -> Result<(), AcpiError> {
        todo!()
    }

    fn write_u64(&self, dev_address: u64, base: u64, offset: u64, value: u64) -> Result<(), AcpiError> {
        todo!()
    }
}
*/
pub trait NewRegionHandlerTrait {
    fn read_u8(&self, dev_address: u64, base: u64, offset: u64) -> Result<u8, AcpiError>;
    fn read_u16(&self, dev_address: u64, base: u64, offset: u64) -> Result<u16, AcpiError>;
    fn read_u32(&self, dev_address: u64, base: u64, offset: u64) -> Result<u32, AcpiError>;
    fn read_u64(&self, dev_address: u64, base: u64, offset: u64) -> Result<u64, AcpiError>;

    fn write_u8(&self, dev_address: u64, base: u64, offset: u64, value: u8) -> Result<(), AcpiError>;
    fn write_u16(&self, dev_address: u64, base: u64, offset: u64, value: u16) -> Result<(), AcpiError>;
    fn write_u32(&self, dev_address: u64, base: u64, offset: u64, value: u32) -> Result<(), AcpiError>;
    fn write_u64(&self, dev_address: u64, base: u64, offset: u64, value: u64) -> Result<(), AcpiError>;
}

/*pub enum NewRegionHandler {
    SystemMemory(SystemMemoryHandler),
    SystemIO,
    PciConfig,
    EmbeddedControl,
    SmBus,
    SystemCmos,
    PciBarTarget,
    Ipmi,
    GeneralPurposeIo,
    GenericSerialBus,
    Pcc,
    Oem(u8),
}

impl NewRegionHandler {}
/*
impl NewRegionHandlerTrait for NewRegionHandler {
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
}*/

pub struct SystemMemoryHandler {}
*/
pub trait SystemMemoryHandlerTrait {
    fn read_u8(&self, _dev_address: u64) -> Result<u8, AcpiError> {
        todo!()
    }

    fn read_u16(&self, _dev_address: u64) -> Result<u16, AcpiError> {
        todo!()
    }

    fn read_u32(&self, _dev_address: u64) -> Result<u32, AcpiError> {
        todo!()
    }

    fn read_u64(&self, _dev_address: u64) -> Result<u64, AcpiError> {
        todo!()
    }

    fn write_u8(&self, _dev_address: u64, _value: u8) -> Result<(), AcpiError> {
        todo!()
    }

    fn write_u16(&self, _dev_address: u64, _value: u16) -> Result<(), AcpiError> {
        todo!()
    }

    fn write_u32(&self, _dev_address: u64, _value: u32) -> Result<(), AcpiError> {
        todo!()
    }

    fn write_u64(&self, _dev_address: u64, _value: u64) -> Result<(), AcpiError> {
        todo!()
    }
}

pub trait SystemIOHandlerTrait {
    fn read_u8(&self, _port: u16) -> Result<u8, AcpiError> {
        todo!()
    }

    fn read_u16(&self, _port: u16) -> Result<u16, AcpiError> {
        todo!()
    }

    fn read_u32(&self, _port: u16) -> Result<u32, AcpiError> {
        todo!()
    }

    fn write_u8(&self, _port: u16, _value: u8) -> Result<(), AcpiError> {
        todo!()
    }

    fn write_u16(&self, _port: u16, _value: u16) -> Result<(), AcpiError> {
        todo!()
    }

    fn write_u32(&self, _port: u16, _value: u32) -> Result<(), AcpiError> {
        todo!()
    }
}
