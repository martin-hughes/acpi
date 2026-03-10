// Test operations on "Bank" fields

use aml_test_tools::handlers::{
    check_cmd_handler::AcpiCommands as CheckCommands,
    listed_response_handler::AcpiCommands as Results,
    std_test_handler::{Command, construct_std_handler},
};

mod test_infra;

#[test]
fn test_basic_bank_store_and_load() {
    // This is a straightforward test of banked fields.
    // Internally: Apart from setting the bank index beforehand, the field read/write is identical
    // to normal fields. So this test is probably sufficient testing of banked fields.
    const AML: &str = r#"DefinitionBlock("%FN%", "DSDT", 1, "RSACPI", "BNKFLD", 1) {
    OperationRegion(MEM, SystemMemory, 0x40000, 0x1000)
    Field(MEM, ByteAcc, NoLock, Preserve) {
        INDX, 8
    }

    BankField (MEM, INDX, 0, WordAcc, NoLock, Preserve) {
        OFFSET (0x02), // Prevent aliasing INDX
        A, 16,
        B, 16,
        C, 16
    }

    BankField (MEM, INDX, 1, WordAcc, NoLock, Preserve) {
        OFFSET (0x02),
        D, 16,
        E, 16,
        F, 16
    }

    Method(MAIN, 0, NotSerialized) {
        C = 0xA55A
        D = C
        E = 0x5AA5
        A = E
        Return (0)
    }
}
"#;

    const EXPECTED_COMMANDS: &[Command] = &[
        (CheckCommands::CreateMutex, Results::Skip()),
        // C = 0xA55A
        (CheckCommands::WriteU8(0x40000, 0), Results::Skip()), // Select bank 0.
        (CheckCommands::WriteU16(0x40006, 0xA55A), Results::Skip()), // Write the value to C.
        // D = C
        (CheckCommands::WriteU8(0x40000, 0), Results::Skip()), // Select bank 0.
        (CheckCommands::ReadU16(0x40006), Results::ReadU16(0xA55A)), // Read the value from C.
        (CheckCommands::WriteU8(0x40000, 1), Results::Skip()), // Select bank 1.
        (CheckCommands::WriteU16(0x40002, 0xA55A), Results::Skip()), // Write the value to D.
        // E = 0x5AA5
        (CheckCommands::WriteU8(0x40000, 1), Results::Skip()), // Select bank 1.
        (CheckCommands::WriteU16(0x40004, 0x5AA5), Results::Skip()), // Write the value to E.
        // A = E
        (CheckCommands::WriteU8(0x40000, 1), Results::Skip()), // Select bank 1.
        (CheckCommands::ReadU16(0x40004), Results::ReadU16(0x5AA5)), // Read from E
        (CheckCommands::WriteU8(0x40000, 0), Results::Skip()), // Select bank 0.
        (CheckCommands::WriteU16(0x40002, 0x5AA5), Results::Skip()), // Write the value to A.
    ];

    let handler = construct_std_handler(EXPECTED_COMMANDS.to_vec());
    test_infra::run_aml_test(AML, handler);
}
