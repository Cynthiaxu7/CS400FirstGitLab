# Variables
JFLAGS = -g
JC = javac
SRC = $(wildcard *.java)
CLASSES = $(SRC:.java=.class)
MAIN = Main

# Default target
default: run

# Compile all .java files to .class files
%.class: %.java
	$(JC) $(JFLAGS) $<

# Target to compile all Java files
classes: $(CLASSES)

# Target to run the main class
run: classes
	java $(MAIN)

# Clean up .class files
clean:
	rm -f *.class

# Phony targets
.PHONY: clean run classes
