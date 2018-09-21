.DEFAULT_GOAL=all

INC_DIR = include
SRC_DIR = src
OBJ_DIR = object
TEST_DIR = test

#compile postgresql library
postgres: $(SRC_DIR)/postgres_db.cpp
	g++ -std=c++14 -I${POSTGRES_PATH}/include -I$(INC_DIR) -c $(SRC_DIR)/postgres_db.cpp -o $(OBJ_DIR)/postgres_db.o
#compile postgresdb testing
main_postgres: $(SRC_DIR)/main_postgres.cpp postgres
	g++ -std=c++14 -I${POSTGRES_PATH}/include -L${POSTGRES_PATH}/lib -I$(INC_DIR) $(OBJ_DIR)/*.o $(SRC_DIR)/main_postgres.cpp -o $(OBJ_DIR)/main_postgres -lpq

#compile mariadb library
maria: $(SRC_DIR)/maria_db.cpp
	g++ -std=c++14 -I${MARIA_PATH}/include/mariadb -I$(INC_DIR) -c $(SRC_DIR)/maria_db.cpp -o $(OBJ_DIR)/maria_db.o
#compile mariadb testing
main_maria: $(SRC_DIR)/main_maria.cpp maria
	g++ -std=c++14 -I${MARIA_PATH}/include/mariadb -L${MARIA_PATH}/lib/mariadb -I$(INC_DIR) $(OBJ_DIR)/*.o $(SRC_DIR)/main_maria.cpp -o $(OBJ_DIR)/main_maria -lmariadb

#compile db_api testing
main: $(SRC_DIR)/main.cpp postgres
	g++ -std=c++14 -I${POSTGRES_PATH}/include -I$(INC_DIR) $(OBJ_DIR)/*.o $(SRC_DIR)/main.cpp -o $(OBJ_DIR)/main -lpq 

#compile db_api testing
store_dm: $(SRC_DIR)/store_dm.cpp postgres
	g++ -std=c++14 -I${POSTGRES_PATH}/include -I$(INC_DIR) $(OBJ_DIR)/*.o $(SRC_DIR)/store_dm.cpp -o $(OBJ_DIR)/store_dm -lpq 
store_samples: $(SRC_DIR)/store_samples.cpp postgres
	g++ -std=c++14 -I${POSTGRES_PATH}/include -I$(INC_DIR) $(OBJ_DIR)/*.o $(SRC_DIR)/store_samples.cpp -o $(OBJ_DIR)/store_samples -lpq 

#clean binaries	
clean: 
	rm -f $(OBJ_DIR)/*.o $(OBJ_DIR)/main $(OBJ_DIR)main_postgres

#compile all project
all: clean main store_dm store_samples
