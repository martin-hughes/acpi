pub mod check_cmd_handler;
pub mod null_handler;
pub mod logging_handler;

use acpi::Handle;
use aml_test_tools::{TestResult, new_interpreter, resolve_and_compile, run_test_for_file};
use pci_types::PciAddress;
use std::{io::Write, path::PathBuf};
use log::info;
use tempfile::{NamedTempFile, TempDir, tempdir};

struct TempScriptFile {
    // This appears to be unused, but since it deletes the temporary directory when it's dropped, we
    // need to keep it.
    #[allow(unused)]
    dir: TempDir,
    asl_file: NamedTempFile,
    aml_file: PathBuf,
}

use crate::test_infra::{check_cmd_handler::CheckCommandHandler, null_handler::NullHandler};
use crate::test_infra::logging_handler::LoggingHandler;

pub fn run_aml_test(asl: &'static str, expected_commands: Vec<AcpiCommands>) {
    // Tests calling `run_aml_test` don't do much else, and we usually want logging, so initialize it here.
    let _ = pretty_env_logger::try_init();

    let script = create_script_file(asl);
    resolve_and_compile(&script.asl_file.path().to_path_buf(), true).unwrap();

    //let handler = CheckCommandHandler::new(expected_commands, NullHandler {});
    log::set_max_level(log::LevelFilter::Trace);
    info!("Hello!");
    let handler = LoggingHandler::new(NullHandler {});
    let mut interpreter = new_interpreter(handler);

    assert_eq!(run_test_for_file(&script.aml_file, &mut interpreter), TestResult::Pass);
}

fn create_script_file(asl: &'static str) -> TempScriptFile {
    let dir = tempdir().unwrap();
    println!("Created temp dir: {:?}", dir.path());
    let mut script_file = NamedTempFile::with_suffix_in(".asl", &dir).unwrap();
    println!("Created temp file: {:?}", script_file.path());

    let output_stem = script_file.path().file_stem().unwrap().to_str().unwrap();
    let output_name = format!("{}.aml", output_stem);
    let output_full_name = dir.path().join(output_name.clone());

    let new_asl = asl.replace("%FN%", output_name.as_str());

    script_file.write_all(new_asl.as_bytes()).unwrap();
    script_file.flush().unwrap();

    TempScriptFile { dir, asl_file: script_file, aml_file: output_full_name }
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
