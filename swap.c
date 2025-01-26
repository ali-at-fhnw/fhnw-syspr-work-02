#include <stdio.h>

void swap(int *a, int *b) {
    int tmp = *a;
    *a = *b;
    *b = tmp;
}

int main(void) {
    int x = 42, y = 23;
    swap(&x, &y);
    printf("x: %d\n", x);
    printf("y: %d\n", y);
    return 0;
}
