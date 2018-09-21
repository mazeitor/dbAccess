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
#include <random>

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
	string create = "CREATE TABLE IF NOT EXISTS samples (id varchar, sample varchar);";
	db->exec(create);
	status = db->status(); 
	cout << "\t\t\t\t status:" << status->status << endl;
	
	auto schema = db->schema("samples");
	for ( auto it = (*schema).begin(); it != (*schema).end(); ++it ){
		auto key = it->first;
		auto value = it->second;
		//cout << key << " " << value << endl;
	}
	
	string sample = "A";
	for(int i=0; i<1000000; i++){
		sample += "A";
	}


	//insert values to table	
	cout << "inserting rows to table 'test'" << endl;
	start_wall_clock = std::chrono::steady_clock::now();
	int N = 1000;
	for(int i=0; i<N; i++){
		//insert values to table
		string insertrow = "INSERT INTO samples (id, sample) VALUES("+std::to_string(i)+",'"+sample+"');";
		db->exec(insertrow);
	}
	finish_wall_clock = std::chrono::steady_clock::now();
  	elapsed_secs = (finish_wall_clock - start_wall_clock)*1.0 / std::chrono::milliseconds(1000);
	cout<< "inserted " << N << " values in " << elapsed_secs << " miliseconds" << endl;
		
	//execute a basic query
	cout << "execute a basic query 'select * from samples'";
	//string query = "SELECT * FROM samples";
	string query = "SELECT * FROM samples";
	db->exec(query);
	status = db->status(); 
	cout << "\t status:" << status->status << endl;
	
	start_wall_clock = std::chrono::steady_clock::now();
	int size = db->size();
	finish_wall_clock = std::chrono::steady_clock::now();
  	elapsed_secs = (finish_wall_clock - start_wall_clock)*1.0 / std::chrono::milliseconds(1000);
	cout<< "size " << size << " values in " << elapsed_secs << " miliseconds" << endl;
		
	start_wall_clock = std::chrono::steady_clock::now();
	auto rows = db->fetch(0,N);
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
	cout << "remove table 'samples'";
	string drop = "DROP TABLE IF EXISTS samples;";
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
