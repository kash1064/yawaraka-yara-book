private rule PrivateHello
{
    strings:
        $hello = "Hello"

    condition:
        $hello
}

rule Hello
{
    strings:
        $hello = "Hello"

    condition:
        $hello
}