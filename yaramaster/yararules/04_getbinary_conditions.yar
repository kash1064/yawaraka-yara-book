rule int_1
{
    strings:
        $intdata = { C7 45 ?? [4] C7}

    condition:
        int16(@intdata[1] + 3) == 100
}

rule int_2
{
    strings:
        $intdata = { C7 45 ?? [4] C7}

    condition:
        int16(@intdata[2] + 3) == 256
}

rule int_3_16bit
{
    strings:
        $intdata = { C7 45 ?? [4] C7}

    condition:
        int16(@intdata[3] + 3) == 65535
}

rule int_3_32bit
{
    strings:
        $intdata = { C7 45 ?? [4] C7}

    condition:
        int32(@intdata[3] + 3) == 65535
}

rule int_3_16bit_correct
{
    strings:
        $intdata = { C7 45 ?? [4] C7}

    condition:
        int16(@intdata[3] + 3) == -1
}

rule uint_3_16bit
{
    strings:
        $intdata = { C7 45 ?? [4] C7}

    condition:
        uint16(@intdata[3] + 3) == 65535
}