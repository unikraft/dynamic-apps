.PHONY: all clean

GO = $(shell which go)

all: helloworld

helloworld: helloworld.go
	$(GO) build -linkshared $<

clean:
	-rm -f helloworld
	-rm -f *~
