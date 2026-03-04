use acpi::{Handle, Handler, PhysicalMapping, aml::AmlError};
use pci_types::PciAddress;
use std::sync::{Arc, atomic::AtomicUsize};

pub fn run_aml_test(asl: &'static str, expected_commands: Vec<AcpiCommands>) {
    todo!()
}

#[derive(Clone, Copy, Debug, PartialEq)]
pub enum AcpiCommands {
    MapPhysicalRegion(usize, usize),
    UnmapPhysicalRegion(usize),
    ReadU8(usize),
    ReadU16(usize),
    ReadU32(usize),
    ReadU64(usize),
    WriteU8(usize, u8),
    WriteU16(usize, u16),
    WriteU32(usize, u32),
    WriteU64(usize, u64),
    ReadIoU8(u16),
    ReadIoU16(u16),
    ReadIoU32(u16),
    WriteIoU8(u16, u8),
    WriteIoU16(u16, u16),
    WriteIoU32(u16, u32),
    ReadPciU8(PciAddress, u16),
    ReadPciU16(PciAddress, u16),
    ReadPciU32(PciAddress, u16),
    WritePciU8(PciAddress, u16, u8),
    WritePciU16(PciAddress, u16, u16),
    WritePciU32(PciAddress, u16, u32),
    NanosSinceBoot,
    Stall(u64),
    Sleep(u64),
    CreateMutex,
    Acquire(Handle, u16),
    Release(Handle),
}

#[derive(Clone, Debug)]
pub struct TestHandler {
    commands: Vec<AcpiCommands>,
    next_command_idx: Arc<AtomicUsize>,
}

impl TestHandler {
    pub fn new(commands: Vec<AcpiCommands>) -> Self {
        Self { commands, next_command_idx: Arc::new(AtomicUsize::new(0)) }
    }

    fn check_command(&self, command: AcpiCommands) {
        let next_command_idx = self.next_command_idx.load(std::sync::atomic::Ordering::Relaxed);
        let next_command = self.commands.get(next_command_idx);

        if next_command.is_none() {
            panic!("More commands attempted than expected");
        };

        assert_eq!(*next_command.unwrap(), command);

        self.next_command_idx.fetch_add(1, std::sync::atomic::Ordering::Relaxed);
    }
}

impl Drop for TestHandler {
    fn drop(&mut self) {
        // Don't do this if the test has already failed, to avoid a double-panic.
        if !std::thread::panicking() {
            assert_eq!(
                self.next_command_idx.load(std::sync::atomic::Ordering::Relaxed),
                self.commands.len(),
                "Not all commands were executed"
            );
        }
    }
}

impl Handler for TestHandler {
    unsafe fn map_physical_region<T>(&self, physical_address: usize, size: usize) -> PhysicalMapping<Self, T> {
        self.check_command(AcpiCommands::MapPhysicalRegion(physical_address, size));

        // This isn't implemented in `aml_tester` either
        todo!()
    }

    fn unmap_physical_region<T>(region: &PhysicalMapping<Self, T>) {
        region.handler.check_command(AcpiCommands::UnmapPhysicalRegion(region.physical_start));
    }

    fn read_u8(&self, address: usize) -> u8 {
        self.check_command(AcpiCommands::ReadU8(address));
        0
    }

    fn read_u16(&self, address: usize) -> u16 {
        self.check_command(AcpiCommands::ReadU16(address));
        0
    }

    fn read_u32(&self, address: usize) -> u32 {
        self.check_command(AcpiCommands::ReadU32(address));
        0
    }

    fn read_u64(&self, address: usize) -> u64 {
        self.check_command(AcpiCommands::ReadU64(address));
        0
    }

    fn write_u8(&self, address: usize, value: u8) {
        self.check_command(AcpiCommands::WriteU8(address, value));
    }

    fn write_u16(&self, address: usize, value: u16) {
        self.check_command(AcpiCommands::WriteU16(address, value));
    }

    fn write_u32(&self, address: usize, value: u32) {
        self.check_command(AcpiCommands::WriteU32(address, value));
    }

    fn write_u64(&self, address: usize, value: u64) {
        self.check_command(AcpiCommands::WriteU64(address, value));
    }

    fn read_io_u8(&self, port: u16) -> u8 {
        self.check_command(AcpiCommands::ReadIoU8(port));
        0
    }

    fn read_io_u16(&self, port: u16) -> u16 {
        self.check_command(AcpiCommands::ReadIoU16(port));
        0
    }

    fn read_io_u32(&self, port: u16) -> u32 {
        self.check_command(AcpiCommands::ReadIoU32(port));
        0
    }

    fn write_io_u8(&self, port: u16, value: u8) {
        self.check_command(AcpiCommands::WriteIoU8(port, value));
    }

    fn write_io_u16(&self, port: u16, value: u16) {
        self.check_command(AcpiCommands::WriteIoU16(port, value));
    }

    fn write_io_u32(&self, port: u16, value: u32) {
        self.check_command(AcpiCommands::WriteIoU32(port, value));
    }

    fn read_pci_u8(&self, address: PciAddress, offset: u16) -> u8 {
        self.check_command(AcpiCommands::ReadPciU8(address, offset));
        0
    }

    fn read_pci_u16(&self, address: PciAddress, offset: u16) -> u16 {
        self.check_command(AcpiCommands::ReadPciU16(address, offset));
        0
    }

    fn read_pci_u32(&self, address: PciAddress, offset: u16) -> u32 {
        self.check_command(AcpiCommands::ReadPciU32(address, offset));
        0
    }

    fn write_pci_u8(&self, address: PciAddress, offset: u16, value: u8) {
        self.check_command(AcpiCommands::WritePciU8(address, offset, value));
    }

    fn write_pci_u16(&self, address: PciAddress, offset: u16, value: u16) {
        self.check_command(AcpiCommands::WritePciU16(address, offset, value));
    }

    fn write_pci_u32(&self, address: PciAddress, offset: u16, value: u32) {
        self.check_command(AcpiCommands::WritePciU32(address, offset, value));
    }

    fn nanos_since_boot(&self) -> u64 {
        self.check_command(AcpiCommands::NanosSinceBoot);
        1000
    }

    fn stall(&self, microseconds: u64) {
        self.check_command(AcpiCommands::Stall(microseconds));
    }

    fn sleep(&self, milliseconds: u64) {
        self.check_command(AcpiCommands::Sleep(milliseconds));
    }

    fn create_mutex(&self) -> Handle {
        self.check_command(AcpiCommands::CreateMutex);
        Handle(0)
    }

    fn acquire(&self, mutex: Handle, timeout: u16) -> Result<(), AmlError> {
        self.check_command(AcpiCommands::Acquire(mutex, timeout));
        Ok(())
    }

    fn release(&self, mutex: Handle) {
        self.check_command(AcpiCommands::Release(mutex));
    }
}

#[test]
fn check_handler_basic_functions() {
    let test_commands = vec![AcpiCommands::ReadIoU8(2), AcpiCommands::WriteIoU16(3, 4)];

    let handler = TestHandler::new(test_commands);
    handler.read_io_u8(2);
    handler.write_io_u16(3, 4);
}

#[test]
#[should_panic]
fn check_handler_fails_for_wrong_command() {
    let test_commands = vec![AcpiCommands::ReadIoU8(2), AcpiCommands::WriteIoU16(3, 4)];

    let handler = TestHandler::new(test_commands);
    handler.read_io_u8(3);
    // We shouldn't actually make it to this command, but it makes sure the handler doesn't panic for having too few
    // commands sent to it.
    handler.write_io_u16(3, 4);
}

#[test]
#[should_panic]
fn check_handler_fails_for_too_many_commands() {
    let test_commands = vec![AcpiCommands::ReadIoU8(2), AcpiCommands::WriteIoU16(3, 4)];

    let handler = TestHandler::new(test_commands);
    handler.read_io_u8(2);
    handler.write_io_u16(3, 4);
    handler.read_io_u8(5);
}

#[test]
#[should_panic]
fn check_handler_fails_for_too_few_commands() {
    let test_commands = vec![AcpiCommands::ReadIoU8(2), AcpiCommands::WriteIoU16(3, 4)];

    let handler = TestHandler::new(test_commands);
    handler.read_io_u8(2);
}
