global rule IsContainHello
{
    strings:
        $hello = "Hello"

    condition:
        $hello
}

rule GoodNight
{
    strings:
        $goodnight = "GoodNight"

    condition:
        $goodnight
}