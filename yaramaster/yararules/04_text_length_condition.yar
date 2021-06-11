rule Hello_5
{
    strings:
        $hello = /Hel*o/

    condition:
        !hello[1] == 5
}

rule Hello_6
{
    strings:
        $hello = /Hel*o/

    condition:
        !hello[2] == 6
}