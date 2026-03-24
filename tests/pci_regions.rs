use aml_test_tools::handlers::std_test_handler::{Command, construct_std_handler, create_mutex, read_u8, write_pci_u8, write_u8, read_pci_u8};
use pci_types::PciAddress;

mod test_infra;

#[test]
fn test_pci_config_region_in_table() {
    const AML: &str = r#"DefinitionBlock("", "DSDT", 1, "RSACPI", "OPREG", 1) {
    Device(TEST) {
        Name (_ADR, 0x00020001) // Arbitrary choice.
        Name (_BBN, 3)
        Name (_SEG, 4)

        OperationRegion(MEM, PCI_Config, 0x40, 0x20)
        Field(MEM, ByteAcc, NoLock, Preserve) {
        Offset (0x10),
            DATA, 8
        }

        Method(RDWR, 0, NotSerialized) {
            DATA = 0xA5
            Return (DATA)
        }
    }

    Method(MAIN, 0, NotSerialized) {
        Local0 = ^TEST.RDWR()
        // Remember that returning zero indicates success.
        Return (Local0 != 0xA5)
    }
}
"#;

    let address: PciAddress = PciAddress::new(4, 3, 2, 1);
    let expected_commands: &[Command] = &[
        create_mutex(),
        // DATA = 0xA5
        write_pci_u8(address, 0x50, 0xA5),
        read_pci_u8(address, 0x50, 0xA5),
    ];

    let handler = construct_std_handler(expected_commands.to_vec());
    test_infra::run_aml_test(AML, handler);
}

#[test]
fn test_pci_config_region_in_method() {
    const AML: &str = r#"DefinitionBlock("", "DSDT", 1, "RSACPI", "OPREG", 1) {
    Method(CRDV, 0, Serialized) {
        Name (_ADR, 0x00020001) // Arbitrary choice.
        Name (_BBN, 3)
        Name (_SEG, 4)

        OperationRegion(MEM, PCI_Config, 0x40, 0x20)
        Field(MEM, ByteAcc, NoLock, Preserve) {
        Offset (0x10),
            DATA, 8
        }

        DATA = 0xA5
        Return (DATA)
    }

    Method(MAIN, 0, NotSerialized) {
        Local0 = CRDV()
        // Remember that returning zero indicates success.
        Return (Local0 != 0xA5)
    }
}
"#;

    let address: PciAddress = PciAddress::new(4, 3, 2, 1);
    let expected_commands: &[Command] = &[
        create_mutex(),
        // DATA = 0xA5
        write_pci_u8(address, 0x50, 0xA5),
        read_pci_u8(address, 0x50, 0xA5),
    ];

    let handler = construct_std_handler(expected_commands.to_vec());
    test_infra::run_aml_test(AML, handler);
}
