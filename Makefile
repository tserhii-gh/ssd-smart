CXX = gcc
CXXFLAGS = -Wall -Werror -Wextra -pedantic -std=c11 -g -fsanitize=address
LDFLAGS =  -fsanitize=address
BUILD_PRINT = @echo -e "\e[1;32m[+] Building -> $@\e[0m"
CLEAN_PRINT = @echo -e "\e[1;31m[-] Cleaned!\e[0m"

SRC = $(wildcard src/*.c)
OBJ = $(SRC:.c=.o)
EXEC = ssd-smart

all: $(EXEC)

$(EXEC): $(OBJ)
	$(BUILD_PRINT)
	@mkdir -p build
	$(CXX) $(LDLIBS) -o build/$@ $(OBJ) $(LDFLAGS)

.PHONY: clean
clean:
	rm -rf build src/main.o
	$(CLEAN_PRINT)