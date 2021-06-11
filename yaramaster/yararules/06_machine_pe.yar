import "pe"

rule get_machine
{
    condition:
        pe.machine == pe.MACHINE_AMD64
}

rule get_machine_hex
{
    condition:
        pe.machine == 0x8664
}