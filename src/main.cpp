/*
 * main.c
 *
 *      Test the API for accessing to databases
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <iostream>
#include <ctime>
#include <chrono> 

#ifndef DB_API_H	
#define DB_API_H
	#include "../include/db_api.hpp"
#endif	

#ifndef POSTGRES_DB_H	
#define POSTGRES_DB_H
	#include "../include/postgres_db.hpp"
#endif	
   
using namespace std;

int main_postgres(){
	//init variables for connecting to db
	Status* status;
	string host = "127.0.0.1";
	string dbname = "postgres";
	string user = "postgres";
	string password = "postgres";
	
	auto start_wall_clock = std::chrono::steady_clock::now();
	auto finish_wall_clock = std::chrono::steady_clock::now();
  	double elapsed_secs;
		
	cout << "Init POSTGRESQL tests..." << endl << endl;
		
	//create and object
	std::shared_ptr<DBAPI> db = create<PostgresDB>();
	status = db->status(); 
		
	//open connection to db
	cout << "open connection to db";
	db->open(host, dbname, user, password);	
	status = db->status();
	cout << "\t\t\t\t status:" << status->status << endl;
		
	//create table
	cout << "create table 'test'";
	string create = "CREATE TABLE IF NOT EXISTS test (id int, name varchar);";
	db->exec(create);
	status = db->status(); 
	cout << "\t\t\t\t status:" << status->status << endl;
	
	auto schema = db->schema("test");
	for ( auto it = (*schema).begin(); it != (*schema).end(); ++it ){
		auto key = it->first;
		auto value = it->second;
		//cout << key << " " << value << endl;
	}
	
	//insert values to table	
	cout << "inserting rows to table 'test'" << endl;
	start_wall_clock = std::chrono::steady_clock::now();
	int N = 1000000;
	for(int i=0; i<N; i++){
		//insert values to table
		string insertrow = "INSERT INTO test (id,name) VALUES("+std::to_string(i)+",'"+std::to_string(i)+"');";
		db->exec(insertrow);
	}
	finish_wall_clock = std::chrono::steady_clock::now();
  	elapsed_secs = (finish_wall_clock - start_wall_clock)*1.0 / std::chrono::milliseconds(1000);
	cout<< "inserted " << N << " values in " << elapsed_secs << " miliseconds" << endl;
		
	//delete values from table
	cout << "removing rows to table 'test'" << endl;
	start_wall_clock = std::chrono::steady_clock::now();
	N = 1;
	for(int i=0; i<N; i++){
		//insert values to table
		string insertrow = "DELETE FROM test WHERE id="+std::to_string(i)+";";
		db->exec(insertrow);
	}
	finish_wall_clock = std::chrono::steady_clock::now();
  	elapsed_secs = (finish_wall_clock - start_wall_clock)*1.0 / std::chrono::milliseconds(1000);
	cout<< "deleted " << N << " values in " << elapsed_secs << " miliseconds" << endl;
	
	//execute a basic query
	cout << "execute a basic query 'select * from test'";
	string query = "SELECT * FROM test";
	db->exec(query);
	status = db->status(); 
	cout << "\t status:" << status->status << endl;
	
	start_wall_clock = std::chrono::steady_clock::now();
	int size = db->size();
	finish_wall_clock = std::chrono::steady_clock::now();
  	elapsed_secs = (finish_wall_clock - start_wall_clock)*1.0 / std::chrono::milliseconds(1000);
	cout<< "size " << size << " values in " << elapsed_secs << " miliseconds" << endl;
		
	start_wall_clock = std::chrono::steady_clock::now();
	auto rows = db->fetch(100/2,100/2+10);
	//cout << rows->at(0) << endl;
	N = rows->size();
	for (auto row=rows->begin(); row != rows->end(); ++row){
		for ( auto it = (*row).begin(); it != (*row).end(); ++it ){
			auto id = it->first;
			auto value = it->second;
		}
	}
	finish_wall_clock = std::chrono::steady_clock::now();
  	elapsed_secs = (finish_wall_clock - start_wall_clock)*1.0 / std::chrono::milliseconds(1000);
	cout<< "fetched " << N << " values in " << elapsed_secs << " miliseconds" << endl;
	
	//clear results	
	cout << "clear results on memory";
	db->clear();
	status = db->status(); 
	cout << "\t\t\t\t status:" << status->status << endl;
	
	//remove table
	cout << "remove table 'test'";
	string drop = "DROP TABLE IF EXISTS test;";
	db->exec(drop);
	status = db->status(); 
	cout << "\t\t\t\t status:" << status->status << endl;
	
	//close connection to db
	cout << "close connection to db";
	db->close();
	status = db->status(); 
	cout << "\t\t\t\t status:" << status->status << endl << endl;
	
	//deallocate memory
	//delete db;

	cout << "Finish tests" << endl;

    return 0;
}


int main(int argc, char *argv[])
{	
	main_postgres();	
	
}
