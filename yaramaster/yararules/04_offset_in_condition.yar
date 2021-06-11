rule HelloIn0x1000_0x1500
{
    strings:
        $hello = "Hello"

    condition:
        $hello in (0x1000..0x1500)
}

rule HelloIn0_1500
{
    strings:
        $hello = "Hello"

    condition:
        $hello in (0..1500)
}

rule HelloInFilesize
{
    strings:
        $hello = "Hello"

    condition:
        $hello in (0x0..filesize)
}