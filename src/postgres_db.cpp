/*
 * postgres_db.cpp
 *
 *      Postgres class to implement the methods for accessing the postgreSQL database
 */

//#include <string.h>
//#include <stdlib.h>
#ifndef POSTGRES_DB_H	
#define POSTGRES_DB_H
	#include "../include/postgres_db.hpp"
#endif	
//#include <iostream>
#include <tuple>

using namespace std;

//wrap connection status from enumeration type ConnStatusType
const char * PGconnStatusType[] = { "CONNECTION_OK", "CONNECTION_BAD", "CONNECTION_STARTED", "CONNECTION_MADE", "CONNECTION_AWAITING_RESPONSE", "CONNECTION_AUTH_OK", "CONNECTION_SETENV", "CONNECTION_SSL_STARTUP", "CONNECTION_NEEDED", "CONNECTION_CHECK_WRITABLE", "CONNECTION_CONSUME"};  

PostgresDB::PostgresDB(){
	mStatus = new Status();
	mStatus->status = "";
	mStatus->msg = "new object";
}

void PostgresDB::open(string host, string dbname, string user, string password) {	
	//parsing connection params
	host = host.empty() ? "127.0.0.1" : host;
	dbname = dbname.empty() ? "postgres" : dbname;
	user = user.empty() ? "postgres" : user;

	string auxinfo = "hostaddr="+host+" dbname="+dbname+" user="+user;
	
	if (!password.empty()) {
		auxinfo += " password="+password;
	}

	const char* conninfo = auxinfo.c_str();

	//the format for connection in libpq is a char* with all the variable separated by space
	//where all the attributes are separated by space
	//and each attribute is the concatenation of <name_attribute>=<value_attrtbute>
	this->conn = PQconnectdb(conninfo);
	
	//updating status
	mStatus->status = PGconnStatusType[PQstatus(this->conn)];
	mStatus->msg = PQerrorMessage(this->conn);
}

void PostgresDB::close(){
    PQfinish(this->conn);	
	//updating status//updating status
	mStatus->status = PGconnStatusType[PQstatus(this->conn)];
	mStatus->msg = PQerrorMessage(this->conn);
}

void PostgresDB::exec(string query){
	this->res = PQexec(this->conn, query.c_str());
	//updating status	
	mStatus->status = PQresStatus(PQresultStatus(this->res));
	mStatus->msg = PQerrorMessage(this->conn);
}

void PostgresDB::clear(){
	PQclear(this->res);
	//updating status
	mStatus->status = PQresStatus(PQresultStatus(this->res));
	mStatus->msg = PQerrorMessage(this->conn);
}

Status* PostgresDB::status(){
	return mStatus;
}

int PostgresDB::size(){
	return 	PQntuples(this->res);
}

std::unordered_map<string,string>* PostgresDB::schema(std::string table){
	string query =	"select column_name as name, data_type as type "
					"from INFORMATION_SCHEMA.COLUMNS "
					"where TABLE_NAME='"+table+"'";
	PGresult* res = PQexec(this->conn, query.c_str());

	int nFields = PQnfields(res);
	int nRows = PQntuples(res);
	
	std::unordered_map<string,string>* schema = new std::unordered_map<string,string>;  

    for (int i = 0; i < nRows; i++)
    {
		string name = "";
		string type = "";
		string key = "";
		for (int j = 0; j < nFields; j++){	
			key = PQfname(res, j);
			if(key.compare("name") == 0){
				name = PQgetvalue(res, i, j);
			}else if(key.compare("type") == 0){
				type = PQgetvalue(res, i, j);
			}
		}
		schema->insert({name,type});
    }
		
	return schema;
}

std::list<std::unordered_map<string,string>>* PostgresDB::fetch(int index, int size){
	//getting number of rows fetch in the query and fields of the schema
    int nFields = PQnfields(this->res);
	int nRows = PQntuples(this->res);

	//checking input parameters for fetch only the desired rows using paging method
	index = index>0 ? index : 0; //if is less than 0, then is 0
	index = index<nRows ? index : nRows-1; //if is greather than nRows, then apply the last one
	size = size>0 ? size : nRows; //if is 0 or less, then we want fetch all
	size = (index+size)<=nRows ? size : nRows-index; // if the index and size is greather than nRows, then is as much is nRows minus index
	
	//creating list of unordered maps for the response
	std::list<std::unordered_map<string,string>>* rows = new std::list<std::unordered_map<string,string>>;  
	
	
	//iterating all rows according to paging parameters
	int N = index+size;
    for (int i = index; i < N; i++)
    {
		std::unordered_map<string,string> row;
        for (int j = 0; j < nFields; j++){			
			PQftype(this->res, j);
			row.insert({PQfname(this->res, j),PQgetvalue(this->res, i, j)});
			//auto tuple = std::make_tuple(PQfname(this->res, j),PQgetvalue(this->res, i, j));
		}
		rows->push_back(row);
    }
	return rows;
}