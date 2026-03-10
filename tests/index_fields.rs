// Test operations on "Index" fields

use aml_test_tools::handlers::{
    check_cmd_handler::AcpiCommands as CheckCommands,
    listed_response_handler::AcpiCommands as Results,
    std_test_handler::{Command, construct_std_handler},
};

mod test_infra;

#[test]
fn test_basic_index_store_and_load_8_bit() {
    // In this test, the data register has the same width as the fields and all fields are correctly
    // aligned. We should see single reads and writes for each store operation.
    const AML: &str = r#"DefinitionBlock("%FN%", "DSDT", 1, "RSACPI", "IDXFLD", 1) {
    OperationRegion(MEM, SystemMemory, 0x40000, 0x1000)
    Field(MEM, ByteAcc, NoLock, Preserve) {
        OFFSET(0x10),
        INDX, 8,
        DATA, 8
    }

    IndexField (INDX, DATA, ByteAcc, NoLock, Preserve) {
        A, 8,
        B, 8,
        C, 8
    }

    Method(MAIN, 0, NotSerialized) {
        C = 0xA5
        A = 0x5A
        B = A
        C = A
        Return (0)
    }
}
"#;

    const EXPECTED_COMMANDS: &[Command] = &[
        (CheckCommands::CreateMutex, Results::Skip()),

        // C = 0xA5
        (CheckCommands::WriteU8(0x40010, 0x02), Results::Skip()), // Set index to point at C
        (CheckCommands::WriteU8(0x40011, 0xA5), Results::Skip()), // Set C = 0xA5

        // A = 0x5A
        (CheckCommands::WriteU8(0x40010, 0x00), Results::Skip()), // Set index to point at A
        (CheckCommands::WriteU8(0x40011, 0x5A), Results::Skip()), // Set A = 0x5A

        // Read A
        (CheckCommands::WriteU8(0x40010, 0x00), Results::Skip()), // etc.
        (CheckCommands::ReadU8(0x40011), Results::ReadU8(0x5A)),

        // B = A
        (CheckCommands::WriteU8(0x40010, 0x01), Results::Skip()),
        (CheckCommands::WriteU8(0x40011, 0x5A), Results::Skip()),

        // Read A
        (CheckCommands::WriteU8(0x40010, 0x00), Results::Skip()),
        (CheckCommands::ReadU8(0x40011), Results::ReadU8(0x5A)),

        // C = A
        (CheckCommands::WriteU8(0x40010, 0x02), Results::Skip()),
        (CheckCommands::WriteU8(0x40011, 0x5A), Results::Skip()),
    ];

    let handler = construct_std_handler(EXPECTED_COMMANDS.to_vec());
    test_infra::run_aml_test(AML, handler);
}

#[test]
fn test_basic_index_store_and_load_16_bit() {
    // In this test, the data register has the same width as the fields and all fields are correctly
    // aligned. We should see single reads and writes for each store operation.
    const AML: &str = r#"DefinitionBlock("%FN%", "DSDT", 1, "RSACPI", "IDXFLD", 1) {
    OperationRegion(MEM, SystemMemory, 0x40000, 0x1000)
    Field(MEM, WordAcc, NoLock, Preserve) {
        OFFSET(0x20),
        INDX, 16,
        DATA, 16
    }

    IndexField (INDX, DATA, WordAcc, NoLock, Preserve) {
        A, 16,
        B, 16,
        C, 16
    }

    Method(MAIN, 0, NotSerialized) {
        C = 0xA5B6
        A = 0x5A6B
        B = A
        C = A
        Return (0)
    }
}
"#;

    const EXPECTED_COMMANDS: &[Command] = &[
        (CheckCommands::CreateMutex, Results::Skip()),

        // C = 0xA5B6
        (CheckCommands::WriteU16(0x40020, 0x04), Results::Skip()), // Set index to point at C
        (CheckCommands::WriteU16(0x40022, 0xA5B6), Results::Skip()), // Set C = 0xA5B6

        // A = 0x5A6B
        (CheckCommands::WriteU16(0x40020, 0x00), Results::Skip()), // Set index to point at A
        (CheckCommands::WriteU16(0x40022, 0x5A6B), Results::Skip()), // Set A = 0x5A6B

        // Read A
        (CheckCommands::WriteU16(0x40020, 0x00), Results::Skip()), // etc.
        (CheckCommands::ReadU16(0x40022), Results::ReadU16(0x5A6B)),

        // B = A
        (CheckCommands::WriteU16(0x40020, 0x02), Results::Skip()),
        (CheckCommands::WriteU16(0x40022, 0x5A6B), Results::Skip()),

        // Read A
        (CheckCommands::WriteU16(0x40020, 0x00), Results::Skip()),
        (CheckCommands::ReadU16(0x40022), Results::ReadU16(0x5A6B)),

        // C = A
        (CheckCommands::WriteU16(0x40020, 0x04), Results::Skip()),
        (CheckCommands::WriteU16(0x40022, 0x5A6B), Results::Skip()),
    ];

    let handler = construct_std_handler(EXPECTED_COMMANDS.to_vec());
    test_infra::run_aml_test(AML, handler);
}

#[test]
fn test_index_multiple_aligned_reads() {
    // In this test, the data register is narrower than the fields, so multiple data register
    // reads are needed to access each field.
    const AML: &str = r#"DefinitionBlock("%FN%", "DSDT", 1, "RSACPI", "IDXFLD", 1) {
    OperationRegion(MEM, SystemMemory, 0x40000, 0x1000)
    Field(MEM, ByteAcc, NoLock, Preserve) {
        OFFSET(0x04),
        INDX, 8,
        DATA, 8
    }

    IndexField (INDX, DATA, ByteAcc, NoLock, Preserve) {
        A, 16,
        B, 16,
        C, 16
    }

    Method(MAIN, 0, NotSerialized) {
        C = 0xA5B6
        B = C
        Return (0)
    }
}
"#;

    const EXPECTED_COMMANDS: &[Command] = &[
        (CheckCommands::CreateMutex, Results::Skip()),

        // C = 0xA5B6
        (CheckCommands::WriteU8(0x40004, 0x04), Results::Skip()), // Set index to point at C (low byte)
        (CheckCommands::WriteU8(0x40005, 0xB6), Results::Skip()), // Set low C = 0xB6
        (CheckCommands::WriteU8(0x40004, 0x05), Results::Skip()), // Set index to point at C (high byte)
        (CheckCommands::WriteU8(0x40005, 0xA5), Results::Skip()), // Set low C = 0xA5

        // B = C. Read C
        (CheckCommands::WriteU8(0x40004, 0x04), Results::Skip()),
        (CheckCommands::ReadU8(0x40005), Results::ReadU8(0xB6)),
        (CheckCommands::WriteU8(0x40004, 0x05), Results::Skip()),
        (CheckCommands::ReadU8(0x40005), Results::ReadU8(0xA5)),

        // Write B
        (CheckCommands::WriteU8(0x40004, 0x02), Results::Skip()),
        (CheckCommands::WriteU8(0x40005, 0xB6), Results::Skip()),
        (CheckCommands::WriteU8(0x40004, 0x03), Results::Skip()),
        (CheckCommands::WriteU8(0x40005, 0xA5), Results::Skip()),
    ];

    let handler = construct_std_handler(EXPECTED_COMMANDS.to_vec());
    test_infra::run_aml_test(AML, handler);
}

#[test]
fn test_index_narrower_than_data() {
    // In this test, the access width of the index field is smaller than the data register. Even
    // though it looks as though individual 16-bit reads/writes would be OK, actually multiple
    // 8-bit reads/writes are needed to access each field. (Not intuitive, but matches ACPICA)
    const AML: &str = r#"DefinitionBlock("%FN%", "DSDT", 1, "RSACPI", "IDXFLD", 1) {
    OperationRegion(MEM, SystemMemory, 0x40000, 0x1000)
    Field(MEM, WordAcc, NoLock, Preserve) {
        OFFSET(0x06),
        INDX, 16,
        DATA, 16
    }

    IndexField (INDX, DATA, ByteAcc, NoLock, Preserve) {
        A, 16,
        B, 16,
        C, 16
    }

    Method(MAIN, 0, NotSerialized) {
        C = 0xA5B6
        B = C
        Return (0)
    }
}
"#;

    const EXPECTED_COMMANDS: &[Command] = &[
        (CheckCommands::CreateMutex, Results::Skip()),

        // C = 0xA5B6
        (CheckCommands::WriteU16(0x40006, 0x04), Results::Skip()), // Set index to point at C, low byte
        (CheckCommands::WriteU8(0x40008, 0xB6), Results::Skip()), // Set C (low) = 0xB6
        (CheckCommands::WriteU16(0x40006, 0x05), Results::Skip()), // Set index to point at C, high byte
        (CheckCommands::WriteU8(0x40008, 0xA5), Results::Skip()), // Set C (high) = 0xA5

        // Read C
        (CheckCommands::WriteU16(0x40006, 0x04), Results::Skip()), // etc.
        (CheckCommands::ReadU8(0x40008), Results::ReadU8(0xB6)),
        (CheckCommands::WriteU16(0x40006, 0x05), Results::Skip()),
        (CheckCommands::ReadU8(0x40008), Results::ReadU8(0xA5)),

        // B = C
        (CheckCommands::WriteU16(0x40006, 0x02), Results::Skip()),
        (CheckCommands::WriteU8(0x40008, 0xB6), Results::Skip()),
        (CheckCommands::WriteU16(0x40006, 0x03), Results::Skip()),
        (CheckCommands::WriteU8(0x40008, 0xA5), Results::Skip()),
    ];

    //let handler = NullHandler;
    let handler = construct_std_handler(EXPECTED_COMMANDS.to_vec());
    test_infra::run_aml_test(AML, handler);
}

#[test]
fn test_index_misaligned_field() {
    // Check that we can successfully update non-aligned index fields.
    const AML: &str = r#"DefinitionBlock("%FN%", "DSDT", 1, "RSACPI", "IDXFLD", 1) {
    OperationRegion(MEM, SystemMemory, 0x40000, 0x1000)
    Field(MEM, ByteAcc, NoLock, Preserve) {
        OFFSET(0x08),
        INDX, 8,
        DATA, 8
    }

    IndexField (INDX, DATA, ByteAcc, NoLock, Preserve) {
        SKIP, 4, // Nybbles make it easier to model mentally!
        A, 8,
        B, 8
    }

    Method(MAIN, 0, NotSerialized) {
        B = 0xB6
        A = B
        Return (0)
    }
}
"#;

    const EXPECTED_COMMANDS: &[Command] = &[
        (CheckCommands::CreateMutex, Results::Skip()),

        // B = 0xB6
        // Set index to point at B, low nybble. Which is actually the byte containing A's high
        // nybble as well.
        (CheckCommands::WriteU8(0x40008, 0x01), Results::Skip()),
        // Read that byte so as to be able to preserve A's high nybble. Pretend that A's high nybble
        // is 0xA.
        (CheckCommands::ReadU8(0x40009), Results::ReadU8(0x0A)),
        // Write back A's high nybble and B's low nybble. This is as much as we test Preserve
        // behaviour in the index field tests - it's assumed that if it works for normal fields, it
        // works for index fields as well.
        (CheckCommands::WriteU8(0x40009, 0x6A), Results::Skip()),
        // Set the index to point at B, high nybble.
        (CheckCommands::WriteU8(0x40008, 0x02), Results::Skip()),
        // Read that byte, which also contains an unused nybble. (Which we've just set to zero)
        (CheckCommands::ReadU8(0x40009), Results::ReadU8(0x00)),
        // Write B's high nybble, preserving the unused zero nybble.
        (CheckCommands::WriteU8(0x40009, 0x0B), Results::Skip()),

        // A = B. Start by reading B
        (CheckCommands::WriteU8(0x40008, 0x01), Results::Skip()),
        (CheckCommands::ReadU8(0x40009), Results::ReadU8(0x60)),
        (CheckCommands::WriteU8(0x40008, 0x02), Results::Skip()),
        (CheckCommands::ReadU8(0x40009), Results::ReadU8(0x0B)),

        // Set A, remembering that there are some reads needed to preserve the other nybbles.
        (CheckCommands::WriteU8(0x40008, 0x00), Results::Skip()),
        (CheckCommands::ReadU8(0x40009), Results::ReadU8(0x00)),
        (CheckCommands::WriteU8(0x40009, 0x60), Results::Skip()),
        (CheckCommands::WriteU8(0x40008, 0x01), Results::Skip()),
        (CheckCommands::ReadU8(0x40009), Results::ReadU8(0x60)),
        (CheckCommands::WriteU8(0x40009, 0x6B), Results::Skip()),
    ];

    let handler = construct_std_handler(EXPECTED_COMMANDS.to_vec());
    test_infra::run_aml_test(AML, handler);
}