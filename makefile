CC=gcc 
CFLAGS=-std=c99 -pedantic -pedantic-errors -Werror -Wall -Wextra

all: struct

struct: struct.c

clean:
	rm -f struct
