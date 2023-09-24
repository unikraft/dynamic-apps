CXXFLAGS = -g -Wall -fPIC
LDLIBS = -lstdc++
LDFLAGS = -pie

.PHONY: all clean

all: blackjack

blackjack: blackjack.o

blackjack.o: blackjack.cpp

clean:
	-rm -f blackjack blackjack.o
	-rm -f *~
