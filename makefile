CC := g++
CFLAGS := -I./include
LDFLAGS := -L./lib -lGL -lGLU -lglfw3
SRCDIR := src
OBJDIR := obj

SOURCES := $(wildcard $(SRCDIR)/*.cpp)
OBJECTS := $(patsubst $(SRCDIR)/%.cpp, $(OBJDIR)/%.o, $(SOURCES))

TARGET := a.out

$(TARGET): main.o $(OBJECTS)
	$(CC) -o $@ main.o $(OBJECTS) src/glad.c $(LDFLAGS)

main.o: main.cpp
	g++ -I./include -c main.cpp

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(TARGET) $(OBJECTS)