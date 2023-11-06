JAVAC = ../bin/javac
JAVA  = ../bin/java

.PHONY: run

run: HelloWorld.class
	$(JAVA) -cp . HelloWorld

HelloWorld.class: HelloWorld.java
	$(JAVAC) -cp . HelloWorld.java

clean:
	rm -f *.class
