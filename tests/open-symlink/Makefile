CFLAGS = -Wall -fPIC
LDFLAGS = -pie

SRCS = $(wildcard *.c)
OBJS = $(patsubst %.c,%.o,$(SRCS))
EXECS = $(patsubst %.c,%,$(SRCS))

.PHONY: all clean

all: $(EXECS)

$(EXECS): %:%.o

$(OBJS): %.o:%.c

clean:
	-rm -f $(EXECS)
	-rm -f $(OBJS)
	-rm -f *~
