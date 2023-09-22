.PHONY: all clean

GO = $(shell which go)

all: server client

server: server.go
	$(GO) build -linkshared $<

client: client.go
	$(GO) build -linkshared $<

clean:
	-rm -f server client
	-rm -f *~
