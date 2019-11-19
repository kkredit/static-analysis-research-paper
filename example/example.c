#include <stdio.h>
#include <stdlib.h>

int getNumber() {
    char numberBuffer[10];
    gets(numberBuffer);
    return atoi(numberBuffer);
}

int main() {
    printf("This program multiplies two numbers.\n");

    printf("Enter number one: ");
    int m1 = getNumber();
    printf("Enter number two: ");
    int m2 = getNumber();

    printf("\nThe product of %d and %d is %d\n", m1, m2, m1 * m2);

    return 0;
}
