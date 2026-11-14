//! A [`Handler`] stores the ACPI tables that could be referenced in a test, forwarding all other
//! calls

use crate::{tables::TestAcpiTable};
use acpi::{Handle, Handler, RawPhysicalMapping, aml::object::Object};
use log::info;
use pci_types::PciAddress;
use std::{
    mem,
    sync::{Arc, Mutex},
};

/// A [`Handler`] wrapper that logs every call to `info!` and then forwards it to an inner handler.
///
/// Use this Handler to have a logging style consistent with the [`acpi`] crate's tests.
#[derive(Clone)]
pub struct TableStoreHandler<H> {
    next_handler: H,
    tables: Arc<Mutex<Vec<TestAcpiTable>>>,
}

impl<H> TableStoreHandler<H>
where
    H: Handler,
{
    pub fn new(next_handler: H) -> Self {
        Self { next_handler, tables: Arc::new(Mutex::new(Vec::new())) }
    }
}

impl<H> Handler for TableStoreHandler<H>
where
    H: Handler,
{
    unsafe fn map_physical_region<T>(&self, physical_address: usize, size: usize) -> RawPhysicalMapping<T> {
        unsafe { self.next_handler.map_physical_region::<T>(physical_address, size) }
    }

    unsafe fn unmap_physical_region<T>(&self, region: RawPhysicalMapping<T>) {
        unsafe { self.next_handler.unmap_physical_region(region) };
    }

    fn read_u8(&self, address: usize) -> u8 {
        self.next_handler.read_u8(address)
    }

    fn read_u16(&self, address: usize) -> u16 {
        self.next_handler.read_u16(address)
    }

    fn read_u32(&self, address: usize) -> u32 {
        self.next_handler.read_u32(address)
    }

    fn read_u64(&self, address: usize) -> u64 {
        self.next_handler.read_u64(address)
    }

    fn write_u8(&self, address: usize, value: u8) {
        self.next_handler.write_u8(address, value);
    }

    fn write_u16(&self, address: usize, value: u16) {
        self.next_handler.write_u16(address, value);
    }

    fn write_u32(&self, address: usize, value: u32) {
        self.next_handler.write_u32(address, value);
    }

    fn write_u64(&self, address: usize, value: u64) {
        self.next_handler.write_u64(address, value);
    }

    fn read_io_u8(&self, port: u16) -> u8 {
        self.next_handler.read_io_u8(port)
    }

    fn read_io_u16(&self, port: u16) -> u16 {
        self.next_handler.read_io_u16(port)
    }

    fn read_io_u32(&self, port: u16) -> u32 {
        self.next_handler.read_io_u32(port)
    }

    fn write_io_u8(&self, port: u16, value: u8) {
        self.next_handler.write_io_u8(port, value);
    }

    fn write_io_u16(&self, port: u16, value: u16) {
        self.next_handler.write_io_u16(port, value);
    }

    fn write_io_u32(&self, port: u16, value: u32) {
        self.next_handler.write_io_u32(port, value);
    }

    fn read_pci_u8(&self, address: PciAddress, offset: u16) -> u8 {
        self.next_handler.read_pci_u8(address, offset)
    }

    fn read_pci_u16(&self, address: PciAddress, offset: u16) -> u16 {
        self.next_handler.read_pci_u16(address, offset)
    }

    fn read_pci_u32(&self, address: PciAddress, offset: u16) -> u32 {
        self.next_handler.read_pci_u32(address, offset)
    }

    fn write_pci_u8(&self, address: PciAddress, offset: u16, value: u8) {
        self.next_handler.write_pci_u8(address, offset, value);
    }

    fn write_pci_u16(&self, address: PciAddress, offset: u16, value: u16) {
        self.next_handler.write_pci_u16(address, offset, value);
    }

    fn write_pci_u32(&self, address: PciAddress, offset: u16, value: u32) {
        self.next_handler.write_pci_u32(address, offset, value);
    }

    fn nanos_since_boot(&self) -> u64 {
        self.next_handler.nanos_since_boot()
    }

    fn stall(&self, microseconds: u64) {
        self.next_handler.stall(microseconds);
    }

    fn sleep(&self, milliseconds: u64) {
        self.next_handler.sleep(milliseconds);
    }

    fn create_mutex(&self) -> Handle {
        self.next_handler.create_mutex()
    }

    fn acquire(&self, mutex: Handle, timeout: u16) -> Result<(), acpi::aml::AmlError> {
        self.next_handler.acquire(mutex, timeout)
    }

    fn release(&self, mutex: Handle) {
        self.next_handler.release(mutex);
    }

    fn handle_debug(&self, object: &Object) {
        self.next_handler.handle_debug(object);
    }

    fn get_table_stream(&self, signature: &str, oem_id: &str, oem_table_id: &str) -> Option<&[u8]> {
        todo!()
    }
}
