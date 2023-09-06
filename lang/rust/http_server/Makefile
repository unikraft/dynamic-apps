.PHONY: all clean

all: http_server

http_server: http_server.rs
	rustc -o $@ $<

clean:
	-rm -f http_server
