rule Hello : Hello Greeding
{
    strings:
        $hello = "Hello"

    condition:
        $hello
}

rule GoodNight : GoodNight Greeding
{
    strings:
        $goodnight = "GoodNight"

    condition:
        $goodnight
}