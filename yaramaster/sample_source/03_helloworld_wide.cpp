#include <stdio.h>
#include <uchar.h>

int main(int argc, char *args[])
{
    char16_t text[] = u"Hello, world!\n";
    size_t text_size = sizeof text / sizeof *text;
    for (size_t i = 0; i < text_size; i++)
    {
        printf("%#x ", text[i]);
    }
    return 0;
}