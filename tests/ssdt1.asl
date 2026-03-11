/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt1.dat
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00008CE9 (36073)
 *     Revision         0x02
 *     Checksum         0x92
 *     OEM ID           "AMD"
 *     OEM Table ID     "AmdTable"
 *     OEM Revision     0x00000002 (2)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x04000000 (67108864)
 */
DefinitionBlock ("", "SSDT", 2, "AMD", "AmdTable", 0x00000002)
{
    Scope (\_SB)
    {
        Name (AGRB, 0xF0000000)
        Name (ADBG, Buffer (0x0100){})
        Name (ADAT, Buffer (0x0520)
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0020 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x10,  // ........
            /* 0028 */  0x1F, 0xFF, 0xFF, 0x00, 0x00, 0x03, 0x01, 0x00,  // ........
            /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,  // ........
            /* 0038 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0048 */  0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00,  // ........
            /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,  // ........
            /* 0060 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0070 */  0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00,  // ........
            /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0080 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,  // ........
            /* 0088 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0098 */  0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00,  // ........
            /* 00A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00A8 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01,  // ........
            /* 00B0 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0100 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0108 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0110 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0118 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0120 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0128 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0130 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0138 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0140 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0148 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0150 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0158 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0160 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0168 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0170 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0178 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0180 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0188 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0190 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0198 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 01A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 01A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 01B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 01B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 01C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 01C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 01D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 01D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 01E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 01E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 01F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 01F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0200 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0208 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0210 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0218 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0220 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0228 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0230 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0238 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0240 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0248 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0250 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0258 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0260 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0268 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0270 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0278 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0280 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0288 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0290 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0298 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 02A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 02A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 02B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 02B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 02C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 02C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 02D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 02D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 02E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 02E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 02F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 02F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0300 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0308 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0310 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0318 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0320 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0328 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0330 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0338 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0340 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0348 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0350 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0358 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0360 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0368 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0370 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0378 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0380 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0388 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0390 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0398 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 03A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 03A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 03B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 03B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 03C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 03C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 03D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 03D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 03E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 03E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 03F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 03F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0400 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0408 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0410 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0418 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0420 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0428 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0430 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0438 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0440 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0448 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0450 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0458 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0460 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0468 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0470 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0478 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0480 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0488 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0490 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0498 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 04A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 04A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 04B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 04B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 04C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 04C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 04D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 04D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 04E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 04E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 04F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 04F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0500 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0508 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0510 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0518 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
        })
        Method (ALIB, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                CreateWordField (Arg1, 0x00, A005)
                CreateWordField (Arg1, 0x02, A006)
                CreateDWordField (Arg1, 0x04, A007)
                Local0 = Buffer (0x0100){}
                CreateWordField (Local0, 0x00, A008)
                A008 = A005 /* \_SB_.ALIB.A005 */
                CreateWordField (Local0, 0x02, A009)
                A009 = A006 /* \_SB_.ALIB.A006 */
                CreateDWordField (Local0, 0x04, A010)
                A010 = A007 /* \_SB_.ALIB.A007 */
                A010 &= ~0x0F
                If ((DerefOf (\_SB.ADAT [0x00]) > 0x00))
                {
                    Local1 = 0x0F
                }
                Else
                {
                    Local1 = 0x01
                }

                A010 |= Local1
                Return (Local0)
            }

            If ((Arg0 == 0x01))
            {
                Local0 = DerefOf (Arg1 [0x02])
                Return (A011 (Local0))
            }

            If ((Arg0 == 0x02))
            {
                Local0 = Buffer (0x0100)
                    {
                         0x03, 0x00, 0x00                                 // ...
                    }
                Return (Local0)
            }

            If ((Arg0 == 0x03))
            {
                Local0 = Buffer (0x0100)
                    {
                         0x03, 0x00, 0x00                                 // ...
                    }
                Return (Local0)
            }

            If ((Arg0 == 0x06))
            {
                Local0 = DerefOf (Arg1 [0x04])
                Local1 = DerefOf (Arg1 [0x02])
                Return (A014 (Local0, Local1))
            }

            If ((Arg0 == 0x0A))
            {
                Local0 = DerefOf (Arg1 [0x02])
                Return (A015 (Local0))
            }

            If ((Arg0 == 0x0B))
            {
                Local0 = DerefOf (Arg1 [0x02])
                Local1 = DerefOf (Arg1 [0x03])
                Local2 = DerefOf (Arg1 [0x04])
                Local2 |= (DerefOf (Arg1 [0x05]) << 0x08)
                Local2 |= (DerefOf (Arg1 [0x06]) << 0x10)
                Local2 |= (DerefOf (Arg1 [0x07]) << 0x18)
                Local3 = DerefOf (Arg1 [0x08])
                Local3 |= (DerefOf (Arg1 [0x09]) << 0x08)
                Local3 |= (DerefOf (Arg1 [0x0A]) << 0x10)
                Local3 |= (DerefOf (Arg1 [0x0B]) << 0x18)
                Local4 = DerefOf (Arg1 [0x0C])
                Local4 |= (DerefOf (Arg1 [0x0D]) << 0x08)
                Local4 |= (DerefOf (Arg1 [0x0E]) << 0x10)
                Local4 |= (DerefOf (Arg1 [0x0F]) << 0x18)
                Return (A016 (Local0, Local1, Local2, Local3, Local4))
            }

            If ((Arg0 == 0x0C))
            {
                Return (A017 (Arg1))
            }

            Return (0x00)
        }

        Method (A014, 2, NotSerialized)
        {
            Local0 = 0x00
            While ((Local0 < 0x10))
            {
                Local1 = A065 (Local0, Arg1)
                If ((Local1 == 0x01))
                {
                    Local1 = A066 (Local0, Arg0)
                    Break
                }

                Local0++
            }

            Local7 = Buffer (0x0A){}
            CreateWordField (Local7, 0x00, A008)
            CreateByteField (Local7, 0x02, A019)
            CreateByteField (Local7, 0x03, A067)
            A008 = 0x04
            A019 = 0x00
            A067 = Local1
            Return (Local7)
        }

        Method (A065, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A060 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A060 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A060 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A060 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A060 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR0.ABR5.A060 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR0.ABR6.A060 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR0.ABR7.A060 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A060 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A060 (Arg1))
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A060 (Arg1))
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A060 (Arg1))
            }

            If ((Arg0 == 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A060 (Arg1))
            }

            If ((Arg0 == 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A060 (Arg1))
            }

            If ((Arg0 == 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A060 (Arg1))
            }

            If ((Arg0 == 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A060 (Arg1))
            }
        }

        Method (A066, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A061 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A061 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A061 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A061 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A061 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR0.ABR5.A061 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR0.ABR6.A061 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR0.ABR7.A061 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A061 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A061 (Arg1))
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A061 (Arg1))
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A061 (Arg1))
            }

            If ((Arg0 == 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A061 (Arg1))
            }

            If ((Arg0 == 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A061 (Arg1))
            }

            If ((Arg0 == 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A061 (Arg1))
            }

            If ((Arg0 == 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A061 (Arg1))
            }
        }

        Name (AD00, 0x00)
        Name (DK00, 0x00)
        Method (A011, 1, NotSerialized)
        {
            If ((AD00 == Arg0))
            {
                Return (0x00)
            }

            AD00 = Arg0
            A003 ()
        }

        Method (A015, 1, NotSerialized)
        {
            DK00 = Arg0
        }

        Method (A016, 5, NotSerialized)
        {
        }

        Name (AP01, 0x00)
        Name (AP02, 0x00)
        Name (AP03, 0x00)
        Name (AP05, 0x00)
        Name (AP0B, 0xFF)
        Name (AP10, 0x00)
        Method (A018, 1, NotSerialized)
        {
            Local7 = Buffer (0x0100){}
            CreateWordField (Local7, 0x00, A008)
            A008 = 0x03
            CreateByteField (Local7, 0x02, A019)
            A019 = 0x01
            If ((DerefOf (\_SB.ADAT [0x00]) == 0x01))
            {
                A019 = 0x02
                Return (Local7)
            }

            If ((DerefOf (\_SB.ADAT [0x00]) == 0x00))
            {
                A019 = 0x01
                Return (Local7)
            }

            A020 (Arg0)
            If ((AP05 != 0x01))
            {
                Return (Local7)
            }

            A021 ()
            A019 = 0x02
            Return (Local7)
        }

        Method (A022, 0, NotSerialized)
        {
            If ((DerefOf (\_SB.ADAT [0x00]) <= 0x01))
            {
                Return (0x00)
            }

            If ((AP05 != 0x01))
            {
                Return (0x00)
            }

            A021 ()
        }

        Method (A023, 1, NotSerialized)
        {
            If ((Arg0 == 0x03))
            {
                AP01 = 0x00
            }
        }

        Method (A024, 1, NotSerialized)
        {
            AP10 = 0x01
        }

        Method (A025, 1, NotSerialized)
        {
            AP05 = Arg0
            If ((DerefOf (\_SB.ADAT [0x00]) <= 0x01))
            {
                Return (0x00)
            }

            Local1 = AP0B /* \_SB_.AP0B */
            If ((AP05 == 0x00))
            {
                Local0 = 0x00
                While ((Local0 < 0x10))
                {
                    A026 (Local0)
                    Local0++
                }

                AP0B = 0x00
            }

            A021 ()
            AP0B = Local1
            Local7 = Buffer (0x0100){}
            Local7 [0x00] = 0x03
            Local7 [0x01] = 0x00
            Local7 [0x02] = 0x00
            Return (Local7)
        }

        Method (A027, 0, NotSerialized)
        {
            If ((AP0B != 0xFF))
            {
                Return (AP0B) /* \_SB_.AP0B */
            }

            Return (AD00) /* \_SB_.AD00 */
        }

        Method (A020, 1, NotSerialized)
        {
            CreateWordField (Arg0, 0x02, AP06)
            CreateWordField (Arg0, 0x04, AP07)
            CreateWordField (Arg0, 0x06, AP08)
            CreateByteField (Arg0, 0x08, AP09)
            CreateByteField (Arg0, 0x09, AP0A)
            Local0 = 0x00
            While ((Local0 < 0x10))
            {
                If ((A028 (Local0, AP06) == 0x01))
                {
                    If (((AP07 & AP08) == 0x01))
                    {
                        Local1 = A029 (Local0)
                        A030 (Local0, Local1)
                    }
                    Else
                    {
                        A030 (Local0, AP0A)
                    }

                    Break
                }

                Local0++
            }
        }

        Method (A031, 0, NotSerialized)
        {
            AP02 = 0x01
            Local0 = 0x00
            While ((Local0 < 0x10))
            {
                Local1 = A032 (Local0)
                If ((Local1 > AP02))
                {
                    AP02 = Local1
                }

                Local0++
            }
        }

        Method (A033, 0, NotSerialized)
        {
            AP03 = 0x00
            Local0 = 0x00
            While ((Local0 < 0x10))
            {
                Local1 = A034 (Local0)
                If ((Local1 > AP03))
                {
                    AP03 = Local1
                }

                Local0++
            }
        }

        Method (A021, 0, NotSerialized)
        {
            A033 ()
            A031 ()
            If ((AP02 != AP01))
            {
                A004 (AP02, AP01)
            }

            If ((AP02 > AP01))
            {
                AP01 = AP02 /* \_SB_.AP02 */
            }

            Local0 = 0x00
            While ((Local0 < 0x10))
            {
                Local1 = A032 (Local0)
                Local2 = A035 (Local0)
                If ((Local1 != Local2))
                {
                    A036 (Local0, Local1)
                }
                ElseIf ((AP10 == 0x01))
                {
                    A036 (Local0, Local1)
                }

                Local0++
            }

            If ((AP02 < AP01))
            {
                AP01 = AP02 /* \_SB_.AP02 */
            }
            ElseIf ((AP10 == 0x01))
            {
                AP01 = AP02 /* \_SB_.AP02 */
            }

            AP10 = 0x00
        }

        Method (A036, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A037 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A037 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A037 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A037 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A037 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR0.ABR5.A037 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR0.ABR6.A037 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR0.ABR7.A037 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A037 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A037 (Arg1))
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A037 (Arg1))
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A037 (Arg1))
            }

            If ((Arg0 == 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A037 (Arg1))
            }

            If ((Arg0 == 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A037 (Arg1))
            }

            If ((Arg0 == 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A037 (Arg1))
            }

            If ((Arg0 == 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A037 (Arg1))
            }
        }

        Method (A035, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A038 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A038 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A038 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A038 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A038 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR0.ABR5.A038 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR0.ABR6.A038 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR0.ABR7.A038 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A038 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A038 ())
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A038 ())
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A038 ())
            }

            If ((Arg0 == 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A038 ())
            }

            If ((Arg0 == 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A038 ())
            }

            If ((Arg0 == 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A038 ())
            }

            If ((Arg0 == 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A038 ())
            }
        }

        Method (A032, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A039 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A039 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A039 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A039 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A039 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR0.ABR5.A039 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR0.ABR6.A039 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR0.ABR7.A039 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A039 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A039 ())
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A039 ())
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A039 ())
            }

            If ((Arg0 == 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A039 ())
            }

            If ((Arg0 == 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A039 ())
            }

            If ((Arg0 == 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A039 ())
            }

            If ((Arg0 == 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A039 ())
            }
        }

        Method (A034, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A040 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A040 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A040 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A040 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A040 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR0.ABR5.A040 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR0.ABR6.A040 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR0.ABR7.A040 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A040 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A040 ())
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A040 ())
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A040 ())
            }

            If ((Arg0 == 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A040 ())
            }

            If ((Arg0 == 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A040 ())
            }

            If ((Arg0 == 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A040 ())
            }

            If ((Arg0 == 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A040 ())
            }
        }

        Method (A029, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A041 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A041 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A041 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A041 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A041 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR0.ABR5.A041 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR0.ABR6.A041 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR0.ABR7.A041 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A041 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A041 ())
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A041 ())
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A041 ())
            }

            If ((Arg0 == 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A041 ())
            }

            If ((Arg0 == 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A041 ())
            }

            If ((Arg0 == 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A041 ())
            }

            If ((Arg0 == 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A041 ())
            }
        }

        Method (A030, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A042 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A042 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A042 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A042 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A042 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR0.ABR5.A042 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR0.ABR6.A042 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR0.ABR7.A042 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A042 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A042 (Arg1))
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A042 (Arg1))
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A042 (Arg1))
            }

            If ((Arg0 == 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A042 (Arg1))
            }

            If ((Arg0 == 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A042 (Arg1))
            }

            If ((Arg0 == 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A042 (Arg1))
            }

            If ((Arg0 == 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A042 (Arg1))
            }
        }

        Method (A028, 2, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A043 (Arg1))
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A043 (Arg1))
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A043 (Arg1))
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A043 (Arg1))
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A043 (Arg1))
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR0.ABR5.A043 (Arg1))
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR0.ABR6.A043 (Arg1))
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR0.ABR7.A043 (Arg1))
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A043 (Arg1))
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A043 (Arg1))
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A043 (Arg1))
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A043 (Arg1))
            }

            If ((Arg0 == 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A043 (Arg1))
            }

            If ((Arg0 == 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A043 (Arg1))
            }

            If ((Arg0 == 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A043 (Arg1))
            }

            If ((Arg0 == 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A043 (Arg1))
            }
        }

        Method (A026, 1, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Return (\_SB.AWR0.ABR0.A044 ())
            }

            If ((Arg0 == 0x01))
            {
                Return (\_SB.AWR0.ABR1.A044 ())
            }

            If ((Arg0 == 0x02))
            {
                Return (\_SB.AWR0.ABR2.A044 ())
            }

            If ((Arg0 == 0x03))
            {
                Return (\_SB.AWR0.ABR3.A044 ())
            }

            If ((Arg0 == 0x04))
            {
                Return (\_SB.AWR0.ABR4.A044 ())
            }

            If ((Arg0 == 0x05))
            {
                Return (\_SB.AWR0.ABR5.A044 ())
            }

            If ((Arg0 == 0x06))
            {
                Return (\_SB.AWR0.ABR6.A044 ())
            }

            If ((Arg0 == 0x07))
            {
                Return (\_SB.AWR0.ABR7.A044 ())
            }

            If ((Arg0 == 0x08))
            {
                Return (\_SB.AWR1.ABR8.A044 ())
            }

            If ((Arg0 == 0x09))
            {
                Return (\_SB.AWR1.ABR9.A044 ())
            }

            If ((Arg0 == 0x0A))
            {
                Return (\_SB.AWR1.ABRA.A044 ())
            }

            If ((Arg0 == 0x0B))
            {
                Return (\_SB.AWR1.ABRB.A044 ())
            }

            If ((Arg0 == 0x0C))
            {
                Return (\_SB.AWR1.ABRC.A044 ())
            }

            If ((Arg0 == 0x0D))
            {
                Return (\_SB.AWR1.ABRD.A044 ())
            }

            If ((Arg0 == 0x0E))
            {
                Return (\_SB.AWR1.ABRE.A044 ())
            }

            If ((Arg0 == 0x0F))
            {
                Return (\_SB.AWR1.ABRF.A044 ())
            }
        }

        OperationRegion (A095, SystemMemory, AGRB, 0x1000)
        Field (A095, ByteAcc, NoLock, Preserve)
        {
            Offset (0xB8), 
            A096,   32
        }

        BankField (A095, A096, 0x03B10530, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A082,   32
        }

        BankField (A095, A096, 0x03B1057C, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A075,   32
        }

        BankField (A095, A096, 0x03B109C4, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A076,   32
        }

        BankField (A095, A096, 0x03B109C8, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A077,   32
        }

        BankField (A095, A096, 0x03B109CC, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A078,   32
        }

        BankField (A095, A096, 0x03B109D0, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A079,   32
        }

        BankField (A095, A096, 0x03B109D4, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A080,   32
        }

        BankField (A095, A096, 0x03B109D8, DWordAcc, NoLock, Preserve)
        {
            Offset (0xBC), 
            A081,   32
        }

        Method (A068, 2, Serialized)
        {
            CreateDWordField (Arg1, 0x00, A069)
            CreateDWordField (Arg1, 0x04, A070)
            CreateDWordField (Arg1, 0x08, A071)
            CreateDWordField (Arg1, 0x0C, A072)
            CreateDWordField (Arg1, 0x10, A073)
            CreateDWordField (Arg1, 0x14, A074)
            A075 = 0x00
            While ((A075 != 0x00)){}
            A076 = A069 /* \_SB_.A068.A069 */
            A077 = A070 /* \_SB_.A068.A070 */
            A078 = A071 /* \_SB_.A068.A071 */
            A079 = A072 /* \_SB_.A068.A072 */
            A080 = A073 /* \_SB_.A068.A073 */
            A081 = A074 /* \_SB_.A068.A074 */
            A082 = Arg0
            While ((A075 == 0x00)){}
        }

        Method (A083, 5, NotSerialized)
        {
            If ((Arg0 == 0x00))
            {
                Local7 = Buffer (0x18){}
                CreateDWordField (Local7, 0x00, A084)
                CreateDWordField (Local7, 0x04, A085)
                CreateDWordField (Local7, 0x08, A086)
                CreateDWordField (Local7, 0x0C, A087)
                CreateDWordField (Local7, 0x10, A088)
                CreateDWordField (Local7, 0x14, A089)
                A084 = Arg0
                A085 = Arg1
                A086 = Arg2
                A087 = Arg3
                A068 (0x0F, Local7)
            }
        }

        Method (A090, 1, NotSerialized)
        {
            If ((Arg0 == 0x00)){}
            Else
            {
            }

            Return (Local0)
        }

        Method (A091, 1, NotSerialized)
        {
            If ((Arg0 == 0x00)){}
        }

        Method (A017, 1, Serialized)
        {
            CreateWordField (Arg0, 0x00, A092)
            Local7 = Buffer (0x18){}
            CreateDWordField (Local7, 0x00, A084)
            CreateDWordField (Local7, 0x04, A085)
            CreateDWordField (Local7, 0x08, A086)
            CreateDWordField (Local7, 0x0C, A087)
            CreateDWordField (Local7, 0x10, A088)
            CreateDWordField (Local7, 0x14, A089)
            Local0 = 0x02
            While ((Local0 < A092))
            {
                Local1 = DerefOf (Arg0 [Local0])
                Local0++
                Local2 = DerefOf (Arg0 [Local0])
                Local0++
                Local2 |= (DerefOf (Arg0 [Local0]) << 0x08)
                Local0++
                Local2 |= (DerefOf (Arg0 [Local0]) << 0x10)
                Local0++
                Local2 |= (DerefOf (Arg0 [Local0]) << 0x18)
                Local0++
                A084 = 0x00
                A085 = 0x00
                A086 = 0x00
                A087 = 0x00
                A088 = 0x00
                A089 = 0x00
                If ((Local1 == 0x04))
                {
                    A084 = Local2
                    A068 (0x3D, Local7)
                }

                If ((Local1 == 0x0B))
                {
                    A084 = Local2
                    A068 (0x3B, Local7)
                }

                If ((Local1 == 0x0C))
                {
                    A084 = Local2
                    A068 (0x3C, Local7)
                }

                If ((Local1 == 0x10))
                {
                    A084 = Local2
                    A068 (0x3E, Local7)
                }

                If ((Local1 == 0x11))
                {
                    A084 = Local2
                    A068 (0x2F, Local7)
                }

                If ((Local1 == 0x30))
                {
                    A084 = Local2
                    A068 (0x4F, Local7)
                    Local3 = Buffer (0x08){}
                    CreateDWordField (Local3, 0x00, A093)
                    CreateDWordField (Local3, 0x04, A094)
                    A093 = A076 /* \_SB_.A076 */
                    A094 = A077 /* \_SB_.A077 */
                    Return (Local3)
                }

                If ((Local1 == 0x31))
                {
                    A084 = Local2
                    A068 (0x50, Local7)
                }
            }
        }

        Device (AWR0)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, 0x90)  // _UID: Unique ID
            Device (ABR0)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x80)  // _UID: Unique ID
                Name (AB12, 0x20)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A045, 0, NotSerialized)
                {
                    Local0 = A027 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR0.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR0.AB0E */
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR0.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR0.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR0.AB0E */
                    }

                    Local0 = A046 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR0.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A045 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR0.AB02 */
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR0.AB00 */
                }

                Method (A037, 1, NotSerialized)
                {
                    AB02 = Arg0
                    A047 (Arg0)
                    If ((AB10 != 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A043, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A050) && (Local0 <= A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A047, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02)){}
                    If ((Arg0 >= 0x03)){}
                    If ((Arg0 == 0x01))
                    {
                        If ((AB04 == 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If ((A062 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A062 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A062 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A062 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A062 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A064 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A062 (Local0, (Local1 + 0x10))
                                A063 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A063 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A062, 2, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR0.A062.ADRR */
                }

                Method (A060, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    A049 = A054 /* \_SB_.AWR0.ABR0.A054 */
                    Local1 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == 0x01))
                    {
                        Local0 = 0x01
                    }
                    Else
                    {
                        A048 (0x00)
                        Local0 = A062 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A062 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A055 = 0x01
                        Local0 = 0x05
                    }

                    A054 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01)){}
                        If ((Local0 == 0x05))
                        {
                            A062 (0x00, 0x00)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }
                    }

                    A054 = A049 /* \_SB_.AWR0.ABR0.A061.A049 */
                    If ((A049 != 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABR1)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x81)  // _UID: Unique ID
                Name (AB12, 0x34)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A045, 0, NotSerialized)
                {
                    Local0 = A027 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR1.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR1.AB0E */
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR1.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR1.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR1.AB0E */
                    }

                    Local0 = A046 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR1.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A045 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR1.AB02 */
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR1.AB00 */
                }

                Method (A037, 1, NotSerialized)
                {
                    AB02 = Arg0
                    A047 (Arg0)
                    If ((AB10 != 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A043, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A050) && (Local0 <= A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A047, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02)){}
                    If ((Arg0 >= 0x03)){}
                    If ((Arg0 == 0x01))
                    {
                        If ((AB04 == 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If ((A062 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A062 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A062 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A062 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A062 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A064 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A062 (Local0, (Local1 + 0x10))
                                A063 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A063 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A062, 2, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR1.A062.ADRR */
                }

                Method (A060, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    A049 = A054 /* \_SB_.AWR0.ABR1.A054 */
                    Local1 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == 0x01))
                    {
                        Local0 = 0x01
                    }
                    Else
                    {
                        A048 (0x00)
                        Local0 = A062 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A062 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A055 = 0x01
                        Local0 = 0x05
                    }

                    A054 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01)){}
                        If ((Local0 == 0x05))
                        {
                            A062 (0x00, 0x00)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }
                    }

                    A054 = A049 /* \_SB_.AWR0.ABR1.A061.A049 */
                    If ((A049 != 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABR2)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x82)  // _UID: Unique ID
                Name (AB12, 0x48)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A045, 0, NotSerialized)
                {
                    Local0 = A027 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR2.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR2.AB0E */
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR2.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR2.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR2.AB0E */
                    }

                    Local0 = A046 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR2.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A045 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR2.AB02 */
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR2.AB00 */
                }

                Method (A037, 1, NotSerialized)
                {
                    AB02 = Arg0
                    A047 (Arg0)
                    If ((AB10 != 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A043, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A050) && (Local0 <= A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A047, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02)){}
                    If ((Arg0 >= 0x03)){}
                    If ((Arg0 == 0x01))
                    {
                        If ((AB04 == 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If ((A062 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A062 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A062 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A062 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A062 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A064 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A062 (Local0, (Local1 + 0x10))
                                A063 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A063 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A062, 2, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR2.A062.ADRR */
                }

                Method (A060, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    A049 = A054 /* \_SB_.AWR0.ABR2.A054 */
                    Local1 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == 0x01))
                    {
                        Local0 = 0x01
                    }
                    Else
                    {
                        A048 (0x00)
                        Local0 = A062 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A062 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A055 = 0x01
                        Local0 = 0x05
                    }

                    A054 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01)){}
                        If ((Local0 == 0x05))
                        {
                            A062 (0x00, 0x00)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }
                    }

                    A054 = A049 /* \_SB_.AWR0.ABR2.A061.A049 */
                    If ((A049 != 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABR3)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x83)  // _UID: Unique ID
                Name (AB12, 0x5C)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A045, 0, NotSerialized)
                {
                    Local0 = A027 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR3.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR3.AB0E */
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR3.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR3.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR3.AB0E */
                    }

                    Local0 = A046 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR3.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A045 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR3.AB02 */
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR3.AB00 */
                }

                Method (A037, 1, NotSerialized)
                {
                    AB02 = Arg0
                    A047 (Arg0)
                    If ((AB10 != 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A043, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A050) && (Local0 <= A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A047, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02)){}
                    If ((Arg0 >= 0x03)){}
                    If ((Arg0 == 0x01))
                    {
                        If ((AB04 == 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If ((A062 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A062 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A062 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A062 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A062 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A064 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A062 (Local0, (Local1 + 0x10))
                                A063 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A063 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A062, 2, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR3.A062.ADRR */
                }

                Method (A060, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    A049 = A054 /* \_SB_.AWR0.ABR3.A054 */
                    Local1 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == 0x01))
                    {
                        Local0 = 0x01
                    }
                    Else
                    {
                        A048 (0x00)
                        Local0 = A062 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A062 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A055 = 0x01
                        Local0 = 0x05
                    }

                    A054 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01)){}
                        If ((Local0 == 0x05))
                        {
                            A062 (0x00, 0x00)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }
                    }

                    A054 = A049 /* \_SB_.AWR0.ABR3.A061.A049 */
                    If ((A049 != 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABR4)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x84)  // _UID: Unique ID
                Name (AB12, 0x70)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A045, 0, NotSerialized)
                {
                    Local0 = A027 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR4.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR4.AB0E */
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR4.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR4.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR4.AB0E */
                    }

                    Local0 = A046 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR4.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A045 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR4.AB02 */
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR4.AB00 */
                }

                Method (A037, 1, NotSerialized)
                {
                    AB02 = Arg0
                    A047 (Arg0)
                    If ((AB10 != 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A043, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A050) && (Local0 <= A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A047, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02)){}
                    If ((Arg0 >= 0x03)){}
                    If ((Arg0 == 0x01))
                    {
                        If ((AB04 == 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If ((A062 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A062 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A062 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A062 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A062 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A064 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A062 (Local0, (Local1 + 0x10))
                                A063 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A063 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A062, 2, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR4.A062.ADRR */
                }

                Method (A060, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    A049 = A054 /* \_SB_.AWR0.ABR4.A054 */
                    Local1 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == 0x01))
                    {
                        Local0 = 0x01
                    }
                    Else
                    {
                        A048 (0x00)
                        Local0 = A062 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A062 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A055 = 0x01
                        Local0 = 0x05
                    }

                    A054 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01)){}
                        If ((Local0 == 0x05))
                        {
                            A062 (0x00, 0x00)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }
                    }

                    A054 = A049 /* \_SB_.AWR0.ABR4.A061.A049 */
                    If ((A049 != 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABR5)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x85)  // _UID: Unique ID
                Name (AB12, 0x84)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A045, 0, NotSerialized)
                {
                    Local0 = A027 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR5.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR5.AB0E */
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR5.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR5.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR5.AB0E */
                    }

                    Local0 = A046 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR5.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A045 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR5.AB02 */
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR5.AB00 */
                }

                Method (A037, 1, NotSerialized)
                {
                    AB02 = Arg0
                    A047 (Arg0)
                    If ((AB10 != 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A043, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A050) && (Local0 <= A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A047, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02)){}
                    If ((Arg0 >= 0x03)){}
                    If ((Arg0 == 0x01))
                    {
                        If ((AB04 == 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If ((A062 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A062 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A062 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A062 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A062 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A064 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A062 (Local0, (Local1 + 0x10))
                                A063 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A063 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A062, 2, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR5.A062.ADRR */
                }

                Method (A060, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    A049 = A054 /* \_SB_.AWR0.ABR5.A054 */
                    Local1 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == 0x01))
                    {
                        Local0 = 0x01
                    }
                    Else
                    {
                        A048 (0x00)
                        Local0 = A062 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A062 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A055 = 0x01
                        Local0 = 0x05
                    }

                    A054 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01)){}
                        If ((Local0 == 0x05))
                        {
                            A062 (0x00, 0x00)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }
                    }

                    A054 = A049 /* \_SB_.AWR0.ABR5.A061.A049 */
                    If ((A049 != 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABR6)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x86)  // _UID: Unique ID
                Name (AB12, 0x98)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A045, 0, NotSerialized)
                {
                    Local0 = A027 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR6.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR6.AB0E */
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR6.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR6.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR6.AB0E */
                    }

                    Local0 = A046 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR6.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A045 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR6.AB02 */
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR6.AB00 */
                }

                Method (A037, 1, NotSerialized)
                {
                    AB02 = Arg0
                    A047 (Arg0)
                    If ((AB10 != 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A043, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A050) && (Local0 <= A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A047, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02)){}
                    If ((Arg0 >= 0x03)){}
                    If ((Arg0 == 0x01))
                    {
                        If ((AB04 == 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If ((A062 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A062 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A062 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A062 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A062 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A064 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A062 (Local0, (Local1 + 0x10))
                                A063 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A063 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A062, 2, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR6.A062.ADRR */
                }

                Method (A060, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    A049 = A054 /* \_SB_.AWR0.ABR6.A054 */
                    Local1 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == 0x01))
                    {
                        Local0 = 0x01
                    }
                    Else
                    {
                        A048 (0x00)
                        Local0 = A062 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A062 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A055 = 0x01
                        Local0 = 0x05
                    }

                    A054 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01)){}
                        If ((Local0 == 0x05))
                        {
                            A062 (0x00, 0x00)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }
                    }

                    A054 = A049 /* \_SB_.AWR0.ABR6.A061.A049 */
                    If ((A049 != 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABR7)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x87)  // _UID: Unique ID
                Name (AB12, 0xAC)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A045, 0, NotSerialized)
                {
                    Local0 = A027 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR0.ABR7.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR0.ABR7.AB0E */
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR0.ABR7.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR0.ABR7.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR0.ABR7.AB0E */
                    }

                    Local0 = A046 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR0.ABR7.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A045 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR0.ABR7.AB02 */
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR0.ABR7.AB00 */
                }

                Method (A037, 1, NotSerialized)
                {
                    AB02 = Arg0
                    A047 (Arg0)
                    If ((AB10 != 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A043, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A050) && (Local0 <= A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A047, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02)){}
                    If ((Arg0 >= 0x03)){}
                    If ((Arg0 == 0x01))
                    {
                        If ((AB04 == 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If ((A062 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A062 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A062 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A062 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A062 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A064 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A062 (Local0, (Local1 + 0x10))
                                A063 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A063 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A062, 2, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR0.ABR7.A062.ADRR */
                }

                Method (A060, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    A049 = A054 /* \_SB_.AWR0.ABR7.A054 */
                    Local1 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == 0x01))
                    {
                        Local0 = 0x01
                    }
                    Else
                    {
                        A048 (0x00)
                        Local0 = A062 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A062 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A055 = 0x01
                        Local0 = 0x05
                    }

                    A054 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01)){}
                        If ((Local0 == 0x05))
                        {
                            A062 (0x00, 0x00)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }
                    }

                    A054 = A049 /* \_SB_.AWR0.ABR7.A061.A049 */
                    If ((A049 != 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }
        }

        Device (AWR1)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, 0x91)  // _UID: Unique ID
            Device (ABR8)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x88)  // _UID: Unique ID
                Name (AB12, 0xC0)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A045, 0, NotSerialized)
                {
                    Local0 = A027 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABR8.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABR8.AB0E */
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABR8.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABR8.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABR8.AB0E */
                    }

                    Local0 = A046 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABR8.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A045 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABR8.AB02 */
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABR8.AB00 */
                }

                Method (A037, 1, NotSerialized)
                {
                    AB02 = Arg0
                    A047 (Arg0)
                    If ((AB10 != 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A043, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A050) && (Local0 <= A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A047, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02)){}
                    If ((Arg0 >= 0x03)){}
                    If ((Arg0 == 0x01))
                    {
                        If ((AB04 == 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If ((A062 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A062 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A062 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A062 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A062 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A064 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A062 (Local0, (Local1 + 0x10))
                                A063 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A063 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A062, 2, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABR8.A062.ADRR */
                }

                Method (A060, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    A049 = A054 /* \_SB_.AWR1.ABR8.A054 */
                    Local1 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == 0x01))
                    {
                        Local0 = 0x01
                    }
                    Else
                    {
                        A048 (0x00)
                        Local0 = A062 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A062 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A055 = 0x01
                        Local0 = 0x05
                    }

                    A054 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01)){}
                        If ((Local0 == 0x05))
                        {
                            A062 (0x00, 0x00)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }
                    }

                    A054 = A049 /* \_SB_.AWR1.ABR8.A061.A049 */
                    If ((A049 != 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABR9)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x89)  // _UID: Unique ID
                Name (AB12, 0xD4)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A045, 0, NotSerialized)
                {
                    Local0 = A027 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABR9.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABR9.AB0E */
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABR9.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABR9.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABR9.AB0E */
                    }

                    Local0 = A046 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABR9.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A045 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABR9.AB02 */
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABR9.AB00 */
                }

                Method (A037, 1, NotSerialized)
                {
                    AB02 = Arg0
                    A047 (Arg0)
                    If ((AB10 != 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A043, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A050) && (Local0 <= A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A047, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02)){}
                    If ((Arg0 >= 0x03)){}
                    If ((Arg0 == 0x01))
                    {
                        If ((AB04 == 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If ((A062 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A062 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A062 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A062 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A062 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A064 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A062 (Local0, (Local1 + 0x10))
                                A063 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A063 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A062, 2, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABR9.A062.ADRR */
                }

                Method (A060, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    A049 = A054 /* \_SB_.AWR1.ABR9.A054 */
                    Local1 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == 0x01))
                    {
                        Local0 = 0x01
                    }
                    Else
                    {
                        A048 (0x00)
                        Local0 = A062 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A062 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A055 = 0x01
                        Local0 = 0x05
                    }

                    A054 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01)){}
                        If ((Local0 == 0x05))
                        {
                            A062 (0x00, 0x00)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }
                    }

                    A054 = A049 /* \_SB_.AWR1.ABR9.A061.A049 */
                    If ((A049 != 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABRA)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x8A)  // _UID: Unique ID
                Name (AB12, 0xE8)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A045, 0, NotSerialized)
                {
                    Local0 = A027 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABRA.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABRA.AB0E */
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABRA.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABRA.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABRA.AB0E */
                    }

                    Local0 = A046 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABRA.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A045 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABRA.AB02 */
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABRA.AB00 */
                }

                Method (A037, 1, NotSerialized)
                {
                    AB02 = Arg0
                    A047 (Arg0)
                    If ((AB10 != 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A043, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A050) && (Local0 <= A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A047, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02)){}
                    If ((Arg0 >= 0x03)){}
                    If ((Arg0 == 0x01))
                    {
                        If ((AB04 == 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If ((A062 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A062 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A062 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A062 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A062 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A064 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A062 (Local0, (Local1 + 0x10))
                                A063 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A063 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A062, 2, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABRA.A062.ADRR */
                }

                Method (A060, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    A049 = A054 /* \_SB_.AWR1.ABRA.A054 */
                    Local1 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == 0x01))
                    {
                        Local0 = 0x01
                    }
                    Else
                    {
                        A048 (0x00)
                        Local0 = A062 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A062 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A055 = 0x01
                        Local0 = 0x05
                    }

                    A054 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01)){}
                        If ((Local0 == 0x05))
                        {
                            A062 (0x00, 0x00)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }
                    }

                    A054 = A049 /* \_SB_.AWR1.ABRA.A061.A049 */
                    If ((A049 != 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABRB)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x8B)  // _UID: Unique ID
                Name (AB12, 0xFC)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A045, 0, NotSerialized)
                {
                    Local0 = A027 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABRB.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABRB.AB0E */
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABRB.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABRB.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABRB.AB0E */
                    }

                    Local0 = A046 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABRB.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A045 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABRB.AB02 */
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABRB.AB00 */
                }

                Method (A037, 1, NotSerialized)
                {
                    AB02 = Arg0
                    A047 (Arg0)
                    If ((AB10 != 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A043, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A050) && (Local0 <= A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A047, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02)){}
                    If ((Arg0 >= 0x03)){}
                    If ((Arg0 == 0x01))
                    {
                        If ((AB04 == 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If ((A062 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A062 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A062 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A062 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A062 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A064 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A062 (Local0, (Local1 + 0x10))
                                A063 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A063 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A062, 2, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABRB.A062.ADRR */
                }

                Method (A060, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    A049 = A054 /* \_SB_.AWR1.ABRB.A054 */
                    Local1 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == 0x01))
                    {
                        Local0 = 0x01
                    }
                    Else
                    {
                        A048 (0x00)
                        Local0 = A062 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A062 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A055 = 0x01
                        Local0 = 0x05
                    }

                    A054 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01)){}
                        If ((Local0 == 0x05))
                        {
                            A062 (0x00, 0x00)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }
                    }

                    A054 = A049 /* \_SB_.AWR1.ABRB.A061.A049 */
                    If ((A049 != 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABRC)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x8C)  // _UID: Unique ID
                Name (AB12, 0x0110)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A045, 0, NotSerialized)
                {
                    Local0 = A027 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABRC.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABRC.AB0E */
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABRC.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABRC.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABRC.AB0E */
                    }

                    Local0 = A046 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABRC.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A045 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABRC.AB02 */
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABRC.AB00 */
                }

                Method (A037, 1, NotSerialized)
                {
                    AB02 = Arg0
                    A047 (Arg0)
                    If ((AB10 != 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A043, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A050) && (Local0 <= A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A047, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02)){}
                    If ((Arg0 >= 0x03)){}
                    If ((Arg0 == 0x01))
                    {
                        If ((AB04 == 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If ((A062 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A062 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A062 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A062 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A062 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A064 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A062 (Local0, (Local1 + 0x10))
                                A063 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A063 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A062, 2, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABRC.A062.ADRR */
                }

                Method (A060, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    A049 = A054 /* \_SB_.AWR1.ABRC.A054 */
                    Local1 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == 0x01))
                    {
                        Local0 = 0x01
                    }
                    Else
                    {
                        A048 (0x00)
                        Local0 = A062 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A062 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A055 = 0x01
                        Local0 = 0x05
                    }

                    A054 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01)){}
                        If ((Local0 == 0x05))
                        {
                            A062 (0x00, 0x00)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }
                    }

                    A054 = A049 /* \_SB_.AWR1.ABRC.A061.A049 */
                    If ((A049 != 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABRD)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x8D)  // _UID: Unique ID
                Name (AB12, 0x0124)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A045, 0, NotSerialized)
                {
                    Local0 = A027 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABRD.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABRD.AB0E */
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABRD.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABRD.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABRD.AB0E */
                    }

                    Local0 = A046 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABRD.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A045 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABRD.AB02 */
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABRD.AB00 */
                }

                Method (A037, 1, NotSerialized)
                {
                    AB02 = Arg0
                    A047 (Arg0)
                    If ((AB10 != 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A043, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A050) && (Local0 <= A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A047, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02)){}
                    If ((Arg0 >= 0x03)){}
                    If ((Arg0 == 0x01))
                    {
                        If ((AB04 == 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If ((A062 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A062 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A062 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A062 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A062 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A064 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A062 (Local0, (Local1 + 0x10))
                                A063 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A063 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A062, 2, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABRD.A062.ADRR */
                }

                Method (A060, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    A049 = A054 /* \_SB_.AWR1.ABRD.A054 */
                    Local1 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == 0x01))
                    {
                        Local0 = 0x01
                    }
                    Else
                    {
                        A048 (0x00)
                        Local0 = A062 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A062 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A055 = 0x01
                        Local0 = 0x05
                    }

                    A054 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01)){}
                        If ((Local0 == 0x05))
                        {
                            A062 (0x00, 0x00)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }
                    }

                    A054 = A049 /* \_SB_.AWR1.ABRD.A061.A049 */
                    If ((A049 != 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABRE)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x8E)  // _UID: Unique ID
                Name (AB12, 0x0138)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A045, 0, NotSerialized)
                {
                    Local0 = A027 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABRE.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABRE.AB0E */
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABRE.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABRE.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABRE.AB0E */
                    }

                    Local0 = A046 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABRE.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A045 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABRE.AB02 */
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABRE.AB00 */
                }

                Method (A037, 1, NotSerialized)
                {
                    AB02 = Arg0
                    A047 (Arg0)
                    If ((AB10 != 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A043, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A050) && (Local0 <= A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A047, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02)){}
                    If ((Arg0 >= 0x03)){}
                    If ((Arg0 == 0x01))
                    {
                        If ((AB04 == 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If ((A062 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A062 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A062 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A062 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A062 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A064 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A062 (Local0, (Local1 + 0x10))
                                A063 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A063 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A062, 2, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABRE.A062.ADRR */
                }

                Method (A060, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    A049 = A054 /* \_SB_.AWR1.ABRE.A054 */
                    Local1 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == 0x01))
                    {
                        Local0 = 0x01
                    }
                    Else
                    {
                        A048 (0x00)
                        Local0 = A062 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A062 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A055 = 0x01
                        Local0 = 0x05
                    }

                    A054 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01)){}
                        If ((Local0 == 0x05))
                        {
                            A062 (0x00, 0x00)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }
                    }

                    A054 = A049 /* \_SB_.AWR1.ABRE.A061.A049 */
                    If ((A049 != 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }

            Device (ABRF)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x8F)  // _UID: Unique ID
                Name (AB12, 0x014C)
                Name (AB00, 0x00)
                Name (AB01, 0x00)
                Name (AB0E, 0x00)
                Name (AB02, 0x00)
                Name (AB03, 0x00)
                Name (AB04, 0x00)
                Name (AB05, 0x00)
                Name (AB06, 0x00)
                Name (AB07, 0x00)
                Name (AB08, 0x00)
                Name (AB09, 0x00)
                Name (AB0A, 0x00)
                Name (AB0B, 0x00)
                Name (AB0C, 0x00)
                Name (AB0D, 0x00)
                OperationRegion (A053, SystemMemory, (AGRB + ((DerefOf (\_SB.ADAT [(AB12 + 0x0D)]
                    ) << 0x0F) | (DerefOf (\_SB.ADAT [(AB12 + 0x0E)]) << 0x0C
                    ))), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x19), 
                    A050,   8, 
                    A051,   8, 
                    Offset (0x68), 
                    A054,   2, 
                        ,   2, 
                    A055,   1, 
                    A056,   1, 
                    Offset (0x6A), 
                        ,   11, 
                    A057,   1, 
                    Offset (0x88), 
                    A058,   4, 
                        ,   1, 
                    A059,   1
                }

                Name (AB10, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    AB00 = DerefOf (\_SB.ADAT [(AB12 + 0x00)])
                    AB0E = DerefOf (\_SB.ADAT [(AB12 + 0x01)])
                    AB01 = DerefOf (\_SB.ADAT [(AB12 + 0x02)])
                    AB02 = DerefOf (\_SB.ADAT [(AB12 + 0x03)])
                    AB03 = DerefOf (\_SB.ADAT [(AB12 + 0x04)])
                    AB04 = DerefOf (\_SB.ADAT [(AB12 + 0x05)])
                    AB05 = DerefOf (\_SB.ADAT [(AB12 + 0x06)])
                    AB06 = DerefOf (\_SB.ADAT [(AB12 + 0x07)])
                    AB07 = DerefOf (\_SB.ADAT [(AB12 + 0x08)])
                    AB08 = DerefOf (\_SB.ADAT [(AB12 + 0x09)])
                    AB09 = DerefOf (\_SB.ADAT [(AB12 + 0x0A)])
                    AB0A = DerefOf (\_SB.ADAT [(AB12 + 0x0B)])
                    AB0B = DerefOf (\_SB.ADAT [(AB12 + 0x0C)])
                    AB0C = DerefOf (\_SB.ADAT [(AB12 + 0x0D)])
                    AB0D = DerefOf (\_SB.ADAT [(AB12 + 0x0E)])
                }

                Method (A045, 0, NotSerialized)
                {
                    Local0 = A027 ()
                    If ((Local0 == 0x01))
                    {
                        Return (AB01) /* \_SB_.AWR1.ABRF.AB01 */
                    }

                    If ((Local0 == 0x00))
                    {
                        Return (AB0E) /* \_SB_.AWR1.ABRF.AB0E */
                    }
                }

                Method (A040, 0, NotSerialized)
                {
                    If ((AB10 != 0x00))
                    {
                        If ((AB10 == 0x01))
                        {
                            Return (0x01)
                        }
                    }

                    Return (0x00)
                }

                Method (A046, 0, NotSerialized)
                {
                    If ((AB05 != 0x00))
                    {
                        Return (AB05) /* \_SB_.AWR1.ABRF.AB05 */
                    }

                    If ((AB10 > 0x01))
                    {
                        Return ((AB10 - 0x01))
                    }

                    Return (0x00)
                }

                Method (A039, 0, NotSerialized)
                {
                    If ((\_SB.AP05 == 0x00))
                    {
                        If ((AB05 != 0x00))
                        {
                            Return (AB05) /* \_SB_.AWR1.ABRF.AB05 */
                        }

                        Return (AB0E) /* \_SB_.AWR1.ABRF.AB0E */
                    }

                    Local0 = A046 ()
                    If ((Local0 != 0x00))
                    {
                        If ((Local0 > AB00))
                        {
                            Return (AB00) /* \_SB_.AWR1.ABRF.AB00 */
                        }
                        Else
                        {
                            Return (Local0)
                        }
                    }

                    Local0 = A045 ()
                    If ((\_SB.AP03 != 0x00))
                    {
                        If ((\_SB.AP03 < Local0))
                        {
                            Return (\_SB.AP03)
                        }
                    }

                    Return (Local0)
                }

                Method (A038, 0, NotSerialized)
                {
                    Return (AB02) /* \_SB_.AWR1.ABRF.AB02 */
                }

                Method (A041, 0, NotSerialized)
                {
                    Return (AB00) /* \_SB_.AWR1.ABRF.AB00 */
                }

                Method (A037, 1, NotSerialized)
                {
                    AB02 = Arg0
                    A047 (Arg0)
                    If ((AB10 != 0x00)){}
                    Else
                    {
                    }

                    A048 (0x00)
                    Name (A049, 0x00)
                    A048 (0x01)
                }

                Method (A042, 1, NotSerialized)
                {
                    AB10 = Arg0
                }

                Method (A043, 1, NotSerialized)
                {
                    Local0 = (Arg0 >> 0x08)
                    If (((Local0 >= A050) && (Local0 <= A051)))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A052, 1, NotSerialized)
                {
                    Local0 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == Local0))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (A044, 0, NotSerialized)
                {
                    AB10 = 0x00
                }

                Method (A047, 1, NotSerialized)
                {
                    If ((Arg0 >= 0x02)){}
                    If ((Arg0 >= 0x03)){}
                    If ((Arg0 == 0x01))
                    {
                        If ((AB04 == 0x01)){}
                    }
                    Else
                    {
                    }
                }

                Method (A064, 2, NotSerialized)
                {
                    If ((A062 (Arg0, 0x00) == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Local0 = A062 (Arg0, 0x34)
                    While (0x01)
                    {
                        Local1 = A062 (Arg0, (Local0 & 0xFF))
                        If (((Local1 & 0xFF) == Arg1))
                        {
                            Return ((Local0 & 0xFF))
                        }

                        Local0 = ((Local1 >> 0x08) & 0xFF)
                        If ((Local0 == 0x00))
                        {
                            Return (Local0)
                        }
                    }
                }

                Name (AESP, Package (0x08)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (A048, 1, NotSerialized)
                {
                    Local0 = 0x00
                    If ((A062 (Local0, 0x00) != 0xFFFFFFFF))
                    {
                        Local1 = (A062 (Local0, 0x08) & 0x80)
                        If ((Local1 == 0x80))
                        {
                            Local7 = 0x07
                        }
                        Else
                        {
                            Local7 = 0x00
                        }

                        While ((Local0 <= Local7))
                        {
                            Local1 = A064 (Local0, 0x10)
                            If ((Local1 == 0x00))
                            {
                                Local0++
                                Continue
                            }

                            If ((Arg0 == 0x00))
                            {
                                Local2 = A062 (Local0, (Local1 + 0x10))
                                A063 (Local0, (Local1 + 0x10), (Local2 & ~0x03))
                                AESP [Local0] = Local2
                            }
                            Else
                            {
                                Local2 = DerefOf (AESP [Local0])
                                A063 (Local0, (Local1 + 0x10), Local2)
                            }

                            Local0++
                        }
                    }
                    Else
                    {
                    }
                }

                Method (A063, 3, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    ADRR = Arg2
                }

                Method (A062, 2, Serialized)
                {
                    Local0 = (AGRB + (A050 << 0x14))
                    Local0 += (Arg0 << 0x0C)
                    Local0 += Arg1
                    OperationRegion (ADRB, SystemMemory, Local0, 0x04)
                    Field (ADRB, DWordAcc, NoLock, Preserve)
                    {
                        ADRR,   32
                    }

                    Return (ADRR) /* \_SB_.AWR1.ABRF.A062.ADRR */
                }

                Method (A060, 1, NotSerialized)
                {
                    If ((AB0B != 0x01))
                    {
                        Return (0x00)
                    }

                    Return (A052 (Arg0))
                }

                Method (A061, 1, NotSerialized)
                {
                    Name (A049, 0x00)
                    A049 = A054 /* \_SB_.AWR1.ABRF.A054 */
                    Local1 = (AB0D | (AB0C << 0x03))
                    If ((Arg0 == 0x01))
                    {
                        Local0 = 0x01
                    }
                    Else
                    {
                        A048 (0x00)
                        Local0 = A062 (0x00, 0x04)
                        If ((Local0 != 0xFFFFFFFF))
                        {
                            A063 (0x00, 0x04, (Local0 & ~0x04))
                            Local0 = A062 (0x01, 0x04)
                            If ((Local0 != 0xFFFFFFFF))
                            {
                                A063 (0x01, 0x04, (Local0 & ~0x04))
                            }
                        }

                        A055 = 0x01
                        Local0 = 0x05
                    }

                    A054 = 0x00
                    While ((Local0 != 0x08))
                    {
                        If ((Local0 == 0x01)){}
                        If ((Local0 == 0x05))
                        {
                            A062 (0x00, 0x00)
                            AB05 = 0x00
                            AB04 = 0x00
                            AB10 = 0x00
                            Local2 = 0x00
                            Local0 = 0x08
                        }
                    }

                    A054 = A049 /* \_SB_.AWR1.ABRF.A061.A049 */
                    If ((A049 != 0x00))
                    {
                        A048 (0x01)
                    }

                    Return (Local2)
                }
            }
        }

        Name (A001, 0x01)
        Name (A002, 0x00)
        Method (APTS, 1, NotSerialized)
        {
            If ((Arg0 == 0x03)){}
        }

        Method (AWAK, 1, NotSerialized)
        {
            If ((Arg0 == 0x03)){}
        }

        Method (A003, 0, NotSerialized)
        {
        }

        Method (A004, 2, NotSerialized)
        {
        }
    }
}

