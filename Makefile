CC=gcc -std=c99

all: check_mult_overflow

check_mult_overflow: mult_overflow.c test.c
	${CC} -o check_mult_overflow mult_overflow.c test.c

clean:
	rm -f check_mult_overflow
