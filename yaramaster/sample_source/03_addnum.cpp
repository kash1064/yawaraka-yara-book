#include <stdio.h>

int add(int a, int b)
{
    return a + b;
}

int main(int argc, char *args[])
{
    int a, b;
    char o;
    scanf("%d", &a);
    scanf("%d", &b);
    int result = add(a, b);
    printf("%d\n", result);
    return 0;
}