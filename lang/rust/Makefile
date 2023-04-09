.PHONY: all clean

all: helloworld

helloworld: helloworld.rs
	rustc -o $@ $<

clean:
	-rm -f helloworld
