#include <stdio.h>

int addition(int par1, int par2);
int power(int b, int n);

int main ( ) {
	printf("My Code and Results:\n");
	int a = 2; 
	int b = 5;
	printf("#1: a = %d & b = %d\n", a, b);
	int result = addition(a, b);
	printf("#3: a = %d & b = %d\n", a, b);
    printf("#4: Result = %d\n", result);

 	printf("\n\nCode from lecturer: \n");
    a = 2;
    int m = 5;
    int q = power(a, m);
    printf("%d^%d = %d\n", a, m, q);
	return 0;
}

int addition(int par1, int par2) {
	par1++;
	par2++;
	printf("#2: p1 = %d & p2 = %d\n", par1, par2);
	return par1 + par2;
}

int power(int b, int n) {
    int p = 1;
    while (n > 0) {
        p = p * b;
        n--;
    }
    // n == 0
    return p;
}
