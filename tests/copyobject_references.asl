// These tests are based on the first two rows of the following table:
// [Object Storing and Copying Rules](https://uefi.org/specs/ACPI/6.6/19_ASL_Reference.html#object-storing-and-copying-rules)
DefinitionBlock ("", "DSDT", 2, "RSCAPI", "CPYOBJCT", 0xF0F0F0F0) {
    Name(FCNT, 0)

    Method (CHEK, 2) {
        If (Arg0 != Arg1) {
            FCNT++
        }
    }

    // Straightforward tests with a named object
    Method (T1) {
        Name(TST, "Hello")
        CopyObject(1, TST)
        CHEK(TST, 1)

        CopyObject("World", TST)
        CHEK(TST, "World")
    }

    // Arguments are rebound unless they are a RefOf.
    Method (T2) {
        Name(TST, "String")
        T2IN(TST)
        CHEK(TST, "String")
    }

    Method (T2IN, 1) {
        CopyObject("Something else", Arg0)
    }

    // Arguments are not rebound if they are a RefOf
    Method (T3) {
        Name(TST, "String")
        T3IN(RefOf(TST))
        CHEK(TST, "Something else")
    }

    Method (T3IN, 1) {
        CopyObject("Something else", Arg0)
    }

    // When doing CopyObject to Arg, multiple RefOfs are skipped over before rebinding
    //
    // TODO: uACPI passes this test, but ACPICA does not. Need to determine what Windows does.
    Method (T4) {
        Name(TST, "String")
        Local0 = RefOf(TST)
        T4IN(RefOf(Local0))
        CHEK(TST, "Something else")
    }

    Method (T4IN, 1) {
        CopyObject("Something else", Arg0)
    }

    // Local is overwritten
    Method (T5) {
        Local0 = "String"
        CopyObject(1, Local0)
        CHEK(Local0, 1)
    }

    // Local is overwritten, even if it contains a reference
    Method (T6) {
        Local0 = "String"
        Local1 = RefOf(Local0)
        CopyObject(1, Local1)
        CHEK(Local0, "String")
        CHEK(Local1, 1)
    }

    Method (MAIN) {
        T1()
        T2()
        T3()
        T4()
        T5()
        T6()

        Return (FCNT)
    }
}