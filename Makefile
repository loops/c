CFLAGS += -O3 --std=gnu2x -D_GNU_SOURCE=1
CFLAGS += -march=skylake -msse4.2
CFLAGS += -Wall -Wextra -Wpedantic -Wshadow
CFLAGS += -Wfloat-conversion -Wfloat-equal -Wduplicated-branches -Wduplicated-cond
CFLAGS += -Wformat-nonliteral -Wformat-security -Wformat-signedness
CFLAGS += -fanalyzer -Wanalyzer-too-complex 
CFLAGS += -fstack-protector-strong -fstack-check -fsplit-stack
CFLAGS += -ftree-vectorize -fopt-info-loop-optimized

all: a b

a: a.c

b: b.c

.PHONY:
warnings:
	gcc -Q --help=warning $(CFLAGS) | grep disabled | less

