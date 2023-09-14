CXXFLAGS = -fPIC -Wall -Wextra
LDFLAGS = -pie
LDLIBS = -lstdc++

all: http_server

http_server: http_server.o

http_server.o: http_server.cpp

clean:
	-rm -f http_server.o http_server
	-rm -f *~
