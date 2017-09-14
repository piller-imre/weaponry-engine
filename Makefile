CC = g++

CFLAGS = -Iinclude -I../src -g -O2 -std=c++11 -Wall -Wextra -Wpedantic -Wno-unused-parameter
LDFLAGS = 

SOURCES = \
	src/Engine.cpp \
    src/main.cpp

OBJECTS = $(SOURCES:.cpp=.o)

EXECUTABLE = engine

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE) : $(OBJECTS)
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm $(OBJECTS)

