OBJS_MAIN := test.o

APP_LIBC := test_libc.out
OBJS_LIBC := $(OBJS_MAIN) implem_libc.o

APP_STOSB := test_stosb.out
OBJS_STOSB := $(OBJS_MAIN) implem_stosb.o

APP_STOSQ := test_stosq.out
OBJS_STOSQ := $(OBJS_MAIN) implem_stosq.o

AS := gcc
CC := gcc
CXX := g++
LD := g++


ASFLAGS :=
CFLAGS  := -std=c99 -O0 -Wall -Wextra -Werror
CXXFLAGS  := -std=c++17 -O3 -Wall -Wextra -Werror

.PHONY: all clean build_libc build_stosb build_stosq run_libc run_stosb run_stosq

all: build_libc build_stosb build_stosq

build_libc: $(APP_LIBC)

build_stosb: $(APP_STOSB)

build_stosq: $(APP_STOSQ)

run_libc: build_libc
	./$(APP_LIBC)

run_stosb: build_stosb
	./$(APP_STOSB)

run_stosq: build_stosq
	./$(APP_STOSQ)

%.o: %.s
	$(AS) $(ASFLAGS) -c $< -o $@

$(APP_LIBC): $(OBJS_LIBC)
	$(LD) $^ $(LDFLAGS) -o $@

$(APP_STOSB): $(OBJS_STOSB)
	$(LD) $^ $(LDFLAGS) -o $@

$(APP_STOSQ): $(OBJS_STOSQ)
	$(LD) $^ $(LDFLAGS) -o $@

clean:
	rm -f *.o *.out
