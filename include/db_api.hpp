/*
 * db_api.hpp
 *
 *      DBAPI class to implement and manage the access to different databases
 */

#include <string.h>
#include <stdlib.h>
#include <iostream>
#include <string>
#include <unordered_map>
#include <list>
#include <memory>

#include "structures.hpp"

using namespace std;

class DBAPI  {	
	public:	
		/*
		 *open connection to postgres database
		 *param host: string with host information
		 *param dbname: string with host information
		 *param user: string with host information
		 *param password: string with host information
		 *return: connection postrges structure
		 */
		virtual void open(string host, string dbname, string user, string password) = 0;

		/*
		 *close connection to postgres database
		 *param conn: connection postgres structure
		 */
		virtual void close() = 0;

		/*
		 *open connection to postgres database
		 *param conn: connection postgres structure
		 *param query: string with the sql query
		 *return: result postgres structure
		 */
		virtual void exec(string query) = 0;

		/*
		 *get the schema of the database
		 *param table: table name
		 *return: unordered map with the relation name attribute for the key and type atttribute for the value 
		 */
		virtual std::unordered_map<string,string>* schema(std::string table) = 0;

		/*
		 *get the number of rows selected in the last query
		 *return: number of rows
		 */		
		virtual int size() = 0;
	
		/*
		 *iterate results form previous query
		 *param index: get the row indexed by this param
		 *param size: number of elements to fetch
		 *return: list of unordered_maps with single row value
		 */		
		virtual std::list<std::unordered_map<string,string>>* fetch(int index, int size) = 0;
	
		/*
		 *deallocate results whenever it is no longer needed to avoid memory leaks
		 *param res: result postgres structure
		 */
		virtual void clear() = 0;
	
		/*
		 *get status of the connection to database
		 */
		virtual Status* status() = 0;	
};

/*
 * template using shared point to cast and allocate different connectors to DB dynamically
 */
template< class T, class... Args >
shared_ptr<DBAPI> create( Args&&... args ){
	shared_ptr<DBAPI> ptr_to_base(make_shared<T>(args...));
	return ptr_to_base;
};
