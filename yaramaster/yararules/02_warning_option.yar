rule WildCard
{
    strings:
        $WildCard = /.*/

    condition:
        $WildCard
}
