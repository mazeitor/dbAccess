/*
 * maria_db.cpp
 *
 *      mariaDB class to implement the methods for accessing the mariaDB database
 */

#ifndef MARIA_DB_H	
#define MARIA_DB_H
	#include "../include/maria_db.hpp"
#endif	

#include <tuple>
#include <sstream>

using namespace std;

MariaDB::MariaDB(){
	mStatus = new Status();
	mStatus->status = "";
	mStatus->msg = "new object";
}

void MariaDB::open(string host, string dbname, string user, string password) {	
	
	this->conn = mysql_init(NULL);
	if (this->conn){
		
		//parsing connection params
		host = host.empty() ? "127.0.0.1" : host;
		dbname = dbname.empty() ? "test" : dbname;
		user = user.empty() ? "root" : user;

		istringstream input_stringstream(host);
		getline(input_stringstream,host,':');
		
		const char * passwd = NULL;
		if (!password.empty()) {
			passwd = password.c_str();
		}
		
		unsigned int port = 0;
		input_stringstream >> port;
				
		const char * unix_socket = NULL;
		unsigned long flag = 0;
		
		this->conn = mysql_real_connect(this->conn, host.c_str(), user.c_str(), passwd, dbname.c_str(), port, unix_socket, flag);
	}
	mStatus->status = mysql_sqlstate(this->conn);
	mStatus->msg = mysql_error(this->conn);
}

void MariaDB::close(){
	mysql_close(this->conn);
	mStatus->status = mysql_sqlstate(this->conn);
	//mStatus->status = std::to_string(mysql_errno(this->conn));
	mStatus->msg = mysql_error(this->conn);
}

void MariaDB::exec(string query){
	mysql_query(this->conn, query.c_str());
	
	this->res = mysql_store_result(this->conn);
	
	mStatus->status = mysql_sqlstate(this->conn);
	//mStatus->status = std::to_string(mysql_errno(this->conn));
	mStatus->msg = mysql_error(this->conn);
}

void MariaDB::clear(){
	mysql_free_result(this->res);
	mStatus->status = mysql_sqlstate(this->conn);
	mStatus->msg = mysql_error(this->conn);
}

Status* MariaDB::status(){
	return mStatus;
}

int MariaDB::size(){
	return mysql_num_rows(this->res);
}

std::unordered_map<string,string>* MariaDB::schema(std::string table){	
	string query =	"select column_name, data_type, column_type "
					"from INFORMATION_SCHEMA.COLUMNS "
					"where TABLE_NAME='"+table+"'";
	mysql_query(this->conn, query.c_str());
	MYSQL_RES* res = mysql_store_result(this->conn);
	MYSQL_ROW dbrow;

	int nFields = mysql_num_fields(res);
	int nRows = mysql_num_rows(res);
		
	std::unordered_map<string,string>* schema = new std::unordered_map<string,string>; 
			
	//iterating all rows according to paging parameters
	while ((dbrow = mysql_fetch_row(res))) {
		string name = "";
		string type = "";
		string key = "";

		name = dbrow[0];
		type = dbrow[1];
		
		schema->insert({name,type});
	}	
	return schema;
}

std::list<std::unordered_map<string,string>>* MariaDB::fetch(int index, int size){
	unsigned int i = 0;
	
	//getting number of rows fetch in the query and fields of the schema
	int nFields = mysql_num_fields(this->res);
	int nRows = mysql_num_rows(this->res);
	//checking input parameters for fetch only the desired rows using paging method
	index = index>0 ? index : 0; //if is less than 0, then is 0
	index = index<nRows ? index : nRows-1; //if is greather than nRows, then apply the last one
	size = size>0 ? size : nRows; //if is 0 or less, then we want fetch all
	size = (index+size)<=nRows ? size : nRows-index; // if the index and size is greather than nRows, then is as much is nRows minus index
	
	//creating list of unordered maps for the response
	std::list<std::unordered_map<string,string>>* rows = new std::list<std::unordered_map<string,string>>;  
		
	//http://zetcode.com/db/mysqlc/
	MYSQL_FIELD *field;
	MYSQL_ROW dbrow;

	unsigned int name_field;
	unsigned int type_field;
	char *names[nFields];
	string table = "";
	
	//get names from the executed query
	for(unsigned int i = 0; (field = mysql_fetch_field(this->res)); i++) {
		names[i] = field->name;
		table = field->table;
	}
	
	std::unordered_map<string,string>* schema = this->schema(table);

	//iterating all rows according to paging parameters
	int N = index+size;
	i = 0;
	
	//TODO IMPROVE PAGING
	while (i<index) {
		mysql_fetch_row(this->res);
		i++;
	}
	while ((dbrow = mysql_fetch_row(this->res))) {
		if(i>=N){
			break;
		}else{
			std::unordered_map<string,string> row;
			//do something with row[name_field]
			for (int j = 0; j < nFields; j++){
				string name = names[j];
				string type = schema->find(name)->second;
				row.insert({name,dbrow[j]});
			}
			rows->push_back(row);
		}
		i++;
	}
	return rows;
}