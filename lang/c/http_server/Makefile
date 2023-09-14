CFLAGS = -fPIC -Wall -Wextra
LDFLAGS = -pie

all: http_server

http_server: http_server.o

http_server.o: http_server.c

clean:
	-rm -f http_server.o http_server
	-rm -f *~
