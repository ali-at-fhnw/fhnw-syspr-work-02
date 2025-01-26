CC=gcc
CFLAGS=-std=c99 -pedantic -pedantic-errors -Werror -Wall -Wextra

all: count error errno fib garbage kilo main f maphome heater power scope static struct struct_v2 swap sys_t version

count: count.c
errno: errno.c
error: error.c
fib: fib.c
garbage: garbage.c
#	$(CC) -o garbage garbage.c
	$(CC) $(CFLAGS) -o garbage garbage.c
main: main.c
f: f.c
kilo: kilo.c
map: map.c
home: home.c
heater: heater.c
power: power.c
scope: scope.c
static: static.c
struct: struct.c
struct_v2: struct_v2.c
swap: swap.c
sys_t: sys_t.c
version: version.c
linked: 
	$(CC) $(CFLAGS) -c main.c
	$(CC) $(CFLAGS) -c f.c
	$(CC) $(CFLAGS) -o linked_object_file main.o f.o
	./linked_object_files
heater:
	$(CC) $(CFLAGS) -c home.c
	$(CC) $(CFLAGS) -c heater.c
	$(CC) $(CFLAGS) -o linked_heater home.o heater.o
	./linked_heater

clean:
	rm -f count
	rm -f errno
	rm -f error
	rm -f fib
	rm -f garbage
	rm -f main
	rm -f f
	rm -f kilo
	rm -f map
	rm -f home
	rm -f heater
	rm -f linked_heater
	rm -f power
	rm -f scope
	rm -f static
	rm -f struct
	rm -f struct_v2.c
	rm -f swap
	rm -f sys_t
	rm -f version
	rm -f linked_object_files

create:
	touch count.c
	touch errno.c
	touch error.c
	touch fib.c
	touch garbage.c
	touch kilo.c
	touch main.c
	touch f.c
	touch map.c
	touch home.c
	touch heater.c
	touch heater.h
	touch power.c
	touch scope.c
	touch static.c
	touch struct.c
	touch struct_v2.c
	touch swap.c
	touch sys_t.c
	touch version.c
