rule Hello
{
    meta:
        text = "This is Hello rule"
        num = 10
        bool = true

    strings:
        $hello = "Hello"

    condition:
        $hello
}