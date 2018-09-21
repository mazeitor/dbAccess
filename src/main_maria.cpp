/*
 * test.c
 *
 *      Test the C version of libpq, the MariaDB frontend library.
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../include/maria_db.hpp"
#include <iostream>
#include <ctime>
#include <chrono> 

using namespace std;

int main(int argc, char *argv[])
{
	//init variables for connecting to db
	Status* status;
	string host = "127.0.0.1";
	string dbname = "test";
	string user = "root";
	string password = "root1234";
	
	auto start_wall_clock = std::chrono::steady_clock::now();
	auto finish_wall_clock = std::chrono::steady_clock::now();
  	double elapsed_secs;
		
	cout << "Init tests..." << endl << endl;
	
	/*
	//create and object
	InterfaceDB* pg = new MariaDB();
	status = pg->status(); 

	//open connection to db
	cout << "open connection to db";
	pg->open(host, dbname, user, password);	
	status = pg->status();
	cout << "\t\t\t\t status:" << status->status << endl;
	
	//create table
	cout << "create table 'test'";
	string create = "CREATE TABLE IF NOT EXISTS test (id int, name varchar);";
	pg->exec(create);
	status = pg->status(); 
	cout << "\t\t\t\t status:" << status->status << endl;
	
	//insert values to table	
	cout << "inserting rows to table 'test'" << endl;
	start_wall_clock = std::chrono::steady_clock::now();
	int N = 100;
	for(int i=0; i<N; i++){
		//insert values to table
		string insertrow = "INSERT INTO test (id,name) VALUES("+std::to_string(i)+",'"+std::to_string(i)+"');";
		pg->exec(insertrow);
	}
	finish_wall_clock = std::chrono::steady_clock::now();
  	elapsed_secs = (finish_wall_clock - start_wall_clock)*1.0 / std::chrono::milliseconds(1000);
	cout<< "inserted " << N << " values in " << elapsed_secs << " miliseconds" << endl;
		
	//delete values from table
	cout << "removing rows to table 'test'" << endl;
	start_wall_clock = std::chrono::steady_clock::now();
	N = 10000;
	for(int i=0; i<N; i++){
		//insert values to table
		string insertrow = "DELETE FROM test WHERE id="+std::to_string(i)+";";
		pg->exec(insertrow);
	}
	finish_wall_clock = std::chrono::steady_clock::now();
  	elapsed_secs = (finish_wall_clock - start_wall_clock)*1.0 / std::chrono::milliseconds(1000);
	cout<< "deleted " << N << " values in " << elapsed_secs << " miliseconds" << endl;
	
	//execute a basic query
	cout << "execute a basic query 'select * from test'";
	string query = "SELECT * FROM test";
	pg->exec(query);
	status = pg->status(); 
	cout << "\t status:" << status->status << endl;
	
	auto rows = pg->fetch(0,1000);
	for (auto row=rows.begin(); row != rows.end(); ++row){
		//std::cout << "---------------------------------------" << endl;
		for ( auto it = (*row).begin(); it != (*row).end(); ++it ){
			auto id = it->first;
			auto value = it->second;
		}
		//std::cout << "---------------------------------------" << endl;
	}
	
	//clear results	
	cout << "clear results on memory";
	pg->clear();
	status = pg->status(); 
	cout << "\t\t\t\t status:" << status->status << endl;
	
	//remove table
	cout << "remove table 'test'";
	string drop = "DROP TABLE IF EXISTS test;";
	pg->exec(drop);
	status = pg->status(); 
	cout << "\t\t\t\t status:" << status->status << endl;
	
	//close connection to db
	cout << "close connection to db";
	pg->close();
	status = pg->status(); 
	cout << "\t\t\t\t status:" << status->status << endl << endl;
	
	//deallocate memory
	delete pg;

	cout << "Finish tests" << endl;*/

    return 0;
}