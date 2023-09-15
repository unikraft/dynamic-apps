CFLAGS = -Wall -fPIC
LDFLAGS = -pie

.PHONY: all clean

all: server client

server: server.o

server.o: server.c

client: client.o

client.o: client.c

clean:
	-rm -f server client
	-rm -f *~
