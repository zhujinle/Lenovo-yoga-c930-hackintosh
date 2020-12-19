/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-SLEEP.aml, Tue Apr 21 02:22:29 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000B6 (182)
 *     Revision         0x01
 *     Checksum         0xBF
 *     OEM ID           "Pike"
 *     OEM Table ID     "MISC"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 1, "Pike", "MISC", 0x00003000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)

    Scope (\)
    {
        Name (SLTP, Zero)
        Method (_TTS, 1, NotSerialized)  // _TTS: Transition To State
        {
            Store ("Method (_TTS) called", Debug)
            Store (Arg0, SLTP)
        }
    }

    Scope (\_SB)
    {
        Method (LPS0, 0, NotSerialized)
        {
            Store ("Method (LPS0) called", Debug)
            Return (One)
        }
    }

    Scope (\_GPE)
    {
        Method (LXEN, 0, NotSerialized)
        {
            Store ("Method (LXEN) called", Debug)
            Return (One)
        }
    }
}

