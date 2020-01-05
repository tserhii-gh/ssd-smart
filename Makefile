CXX = gcc
CXXFLAGS = -Wall -Werror -Wextra -pedantic -std=c11 -g -fsanitize=address
LDFLAGS =  -fsanitize=address

SRC = src/main.c
OBJ = $(SRC:.c=.o)
EXEC = ssd-smart

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CXX) $(LDFLAGS) -o $@ $(OBJ) $(LDLIBS)

clean:
	rm ssd-smart ssd-smart.o