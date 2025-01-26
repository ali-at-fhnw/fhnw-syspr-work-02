#include <stdio.h>
#include <stdlib.h>

typedef struct point { int x; int y; } Point;

Point *create_point(int x, int y ) {
	Point *p = malloc(sizeof(Point));
	p->x = x;
	p->y = y;
	return p;
}

int main(void) {
	Point *origin = create_point(1, 11);
	printf("(%d, %d)\n", origin->x, (*origin).y); // (*p).x 'EQUAL' p->x
	free(origin);
	return 0;
}

