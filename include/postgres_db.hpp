/*
 * postgres_db.hpp
 *
 *      Postgres class to implement the methods for accessing the postgreSQL database
 */

//linking to libpq C driver for postgreSQL
extern "C" {
	#include <libpq-fe.h>
}

#ifndef DB_API_H	
#define DB_API_H
	#include "../include/db_api.hpp"
#endif	

using namespace std;

class PostgresDB : public DBAPI {
	private:
		PGconn* conn;
		PGresult* res;
		Status* mStatus;
	public:
		/*
		 *Constructor definition
		 */
		PostgresDB();
	
		/*
		 *open connection to postgres database
		 *param host: string with host information
		 *param dbname: string with host information
		 *param user: string with host information
		 *param password: string with host information
		 *return: connection postrges structure
		 */
		void open(string host, string dbname, string user, string password);

		/*
		 *close connection to postgres database
		 *param conn: connection postgres structure
		 */
		void close();

		/*
		 *open connection to postgres database
		 *param conn: connection postgres structure
		 *param query: string with the sql query
		 *return: result postgres structure
		 */
		void exec(string query);
		
		/*
		 *get the schema of the database
		 *param table: table name
		 *return: unordered map with the relation name attribute for the key and type atttribute for the value 
		 */
		std::unordered_map<string,string>* schema(std::string table);

		/*
		 *get the number of rows selected in the last query
		 *return: number of rows
		 */		
		int size();
	
		/*
		 *iterate results form previous query
		 *param index: get the row indexed by this param
		 *param size: number of elements to fetch
		 *return: list of unordered_maps with single row value
		 */		
		std::list<std::unordered_map<string,string>>* fetch(int index, int size);
		
		/*
		 *deallocate results whenever it is no longer needed to avoid memory leaks
		 *param res: result postgres structure
		 */
		void clear();
	
		/*
		 *get status of the connection to database
		 */
		Status* status();	
};