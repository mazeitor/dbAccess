.DEFAULT_GOAL=all

INC_DIR = ../include
CFLAGS=-c -Wall -I$(INC_DIR)
DEPS = structures.hpp


postgres: postgres_api.cpp
	g++ -std=c++11 -I${POSTGRES_PATH}/include -I${POSTGRES_PATH}/lib/libpq -c postgres_api.cpp -o postgres_api.o -lpq

main: main.cpp postgres
	g++ -std=c++11 -I${POSTGRES_PATH}/include -L${POSTGRES_PATH}/lib postgres_api.o main.cpp -o main -lpq

clean: 
	rm -f *.o main

all: clean main
