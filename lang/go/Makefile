.PHONY: all clean

GO = $(shell which go)

all: server client helloworld

server: server.go
	$(GO) build -linkshared $<

client: client.go
	$(GO) build -linkshared $<

helloworld: helloworld.go
	$(GO) build -linkshared $<

clean:
	-rm -f helloworld server client
	-rm -f *~
