CFLAGS = -Wall -fPIC
LDFLAGS = -pie

.PHONY: all clean

all: helloworld

helloworld: helloworld.o

helloworld.o: helloworld.c

clean:
	-rm -f helloworld
	-rm -f *~
