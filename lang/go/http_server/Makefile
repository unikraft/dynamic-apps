.PHONY: all clean

GO = $(shell which go)

all: http_server

http_server: http_server.go
	$(GO) build -linkshared $<

clean:
	-rm -f http_server
	-rm -f *~
