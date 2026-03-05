mod test_infra;

#[test]
#[ignore]
fn test_basic() {
    const AML: &'static str = r#"DefinitionBlock("%FN%", "DSDT", 1, "RSACPI", "IDXFLD", 1) {
    // Adapted from part of the DSDT on a Dell XPS 13 laptop.
    OperationRegion (RTCO, SystemIO, 0x72, 0x02)
    Field (RTCO, ByteAcc, NoLock, Preserve)
    {
        CIND,   8,
        CDAT,   8
    }
    IndexField (CIND, CDAT, AnyAcc, NoLock, Preserve)
    {
        Offset (0x5A),
        TEST,   16
    }

    TEST++
}"#;

    const EXPECTED_COMMANDS: &[test_infra::AcpiCommands] = &[];

    test_infra::run_aml_test(AML, EXPECTED_COMMANDS.to_vec());
}

#[test]
fn test_fields() {
    const AML: &'static str = r#"DefinitionBlock("%FN%", "DSDT", 1, "RSACPI", "BUFFLD", 1) {
    OperationRegion(MEM, SystemIO, 0x40, 0x10)
    Field(MEM, WordAcc, NoLock, Preserve) {
        A, 7,
        B, 8
    }

    Method(MAIN, 0, NotSerialized) {
        A = 4
        B = A

        Return (0)
    }
}
"#;

    const EXPECTED_COMMANDS: &[test_infra::AcpiCommands] = &[];

    test_infra::run_aml_test(AML, EXPECTED_COMMANDS.to_vec());
}
