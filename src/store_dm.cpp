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
	cout << "create table 'dm'";
	string create = "CREATE TABLE IF NOT EXISTS dm (sample1 varchar, sample2 varchar, snp int);";
	db->exec(create);
	status = db->status(); 
	cout << "\t\t\t\t status:" << status->status << endl;
	
	auto schema = db->schema("dm");
	for ( auto it = (*schema).begin(); it != (*schema).end(); ++it ){
		auto key = it->first;
		auto value = it->second;
		//cout << key << " " << value << endl;
	}
	
	//insert values to table	
	cout << "inserting rows to table 'dm'" << endl;
	start_wall_clock = std::chrono::steady_clock::now();
	int N = 1000;
	for(int i=0; i<N; i++){
		for(int j=0; j<N; j++){
			int value = 1000; //rand() % 1000 + 1;
			if(j == 1){
				value = 0;			
			}
			//insert values to table
			string insertrow = "INSERT INTO dm (sample1, sample2, snp) VALUES("+std::to_string(i)+",'"+std::to_string(j)+"', '"+std::to_string(value)+"');";
			db->exec(insertrow);
		}
	}
	finish_wall_clock = std::chrono::steady_clock::now();
  	elapsed_secs = (finish_wall_clock - start_wall_clock)*1.0 / std::chrono::milliseconds(1000);
	cout<< "inserted " << N << " values in " << elapsed_secs << " miliseconds" << endl;
		
	//execute a basic query
	cout << "execute a basic query 'select * from dm'";
	//string query = "SELECT * FROM dm";
	string query = "SELECT * FROM dm WHERE snp<20";
	db->exec(query);
	status = db->status(); 
	cout << "\t status:" << status->status << endl;
	
	start_wall_clock = std::chrono::steady_clock::now();
	int size = db->size();
	finish_wall_clock = std::chrono::steady_clock::now();
  	elapsed_secs = (finish_wall_clock - start_wall_clock)*1.0 / std::chrono::milliseconds(1000);
	cout<< "size " << size << " values in " << elapsed_secs << " miliseconds" << endl;
		
	start_wall_clock = std::chrono::steady_clock::now();
	auto rows = db->fetch(0,size);
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
	cout << "remove table 'dm'";
	string drop = "DROP TABLE IF EXISTS dm;";
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

	cout << "Finish dm tests" << endl;

    return 0;
}


int main(int argc, char *argv[])
{	
	main_postgres();	
	
}
