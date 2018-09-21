# DB_API #

Module to access different databases providing a simple and unique API. This library will be part of RDFox project to help to serialize/deserialize semantic data to/from databases like postgreSQL, oracle, mysql, microsoft sql, sqlite or cassandra. 

* written in c/c++ 
* version 0.1
* set of avaiable drivers: postgresql with libpq, mysql and mariadb with libmariadb

## Structure ##
The project have been structured in different folders: doc, include, src, object and test.  

* doc: automatic documentation generated taking the doc string inside hpp files  
* include: hpp description classes  
* src: cpp implementation classes  
* object: compiled objects and libraries  
* test: testing files for single drivers to databases  

## How use the module ##
The module provide basic functionalities like open and close connection to database, execute a sql command, fetch results and check the status of the connector. See the file main.cpp under src folder to check how to use the module.

1- import the module  
```
#include "db_api.hpp"
```

2- create an instance of the module: [POSTGRES_DB, MARIA_DB]  
```
DBAPI* db = new DBAPI(POSTGRES_DB);
```

3- open a connection  
```
string host = "127.0.0.1";
string dbname = "postgres";
string user = "postgres";
string password = "postgres";
db->open(host, dbname, user, password);	
```

4- create a table  
```
string query = "CREATE TABLE IF NOT EXISTS test (id int, name varchar);";
db->exec(query);
```

5- insert a row 
```
string query = "INSERT INTO test (id,name) VALUES(1,'1');";
db->exec(query);
```

6- fetch rows
```
//query for selecting desired rows
string query = "SELECT * FROM table;";
db->exec(query);

//fetch data using paging
int index = 0;
int size = 100;
auto rows = db->fetch(index,size);
/*iterating for all selected rows*/
for (auto row=rows.begin(); row != rows.end(); ++row){
    /*iterating for all fields in a row*/
    for ( auto it = (*row).begin(); it != (*row).end(); ++it){
        auto id = it->first;
        auto value = it->second;
    }
}
```

7- clear results on memory  
```
db->clear();
```

8- close a connection  
```
db->close();	
```

## How do I get set up? ##
First of all we should install the service for each database and then we need to get the libraries to link to our code for development. Next, we are going to explain how to install the different services, use the precompiled libraries or compile them for Linux and Windows.

#### PostgreSQL ####

##### Ubuntu ##### 
  
```
sudo apt-get install postgresql postgresql-contrib
```
* Configuration  
    * 1- setting up environment variable PATH and POSTGRES_PATH like this export POSTGRES_PATH=<path to binary postgres>  
		ex: export PATH=$PATH:/opt/PostgreSQL/9.6/bin/ and export POSTGRES_PATH=/opt/PostgreSQL/9.6  
    * 2- setting up library in the system  
        ex: sudo ln -s ${POSTGRES_PATH}/lib/libpq.so.5 /usr/lib/libpq.so.5  
    * 3- you can find the static library 
        ${POSTGRES_PATH}/lib/libpq.a
* Dependencies  
    * 1- link includes to the project  
  		ex: -I${POSTGRES_PATH}/include/  
    * 2- link binaries to the project  
  		ex: -L${POSTGRES_PATH}/lib  

#####  Fedora ##### 
  
```
sudo yum install postgresql-server postgresql-contrib
sudo yum install postgresql-devel
```
In some cases we should edit the config file to give proper access.
* Edit /var/lib/pgsql/data/pg_hba.conf config file to allow proper access to db (change ident or peer per trust) 
```
# "local" is for Unix domain socket connections only
local   all             all                                     trust
# IPv4 local connections:
host    all             all             127.0.0.1/32            trust
# IPv6 local connections:
host    all             all             ::1/128                 trust
```

#####  Windows ##### 
* Download the binary and install it  
* Dependencies on VisualStudio  
    * Add include and lib to VC++ Directories->Include and ->Library correspondingly  
  		C:\Program Files\PostgreSQL\9.6\include  
  		C:\Program Files\PostgreSQL\9.6\lib  
    * Add libpq.lib to Linker->Input->Additional dependencies, you can link dynamic dll's instead  
  		C:\Program Files\PostgreSQL\9.6\lib\libpq.lib  
    * Add bin to debugging->Environment  
  		C:\Program Files\PostgreSQL\9.6\bin  
    

#### Compiling libpq ####    
In general, We can find a precompiled static library (libpq.a for linux and libpq.lib for windows) under lib folder but in case there isn't we could compile the project ourself. 

* download the source code: https://www.postgresql.org/ftp/source/ and get the desired version
```
wget https://ftp.postgresql.org/pub/source/v9.6.3/postgresql-9.6.3.tar.bz2 
```
* unpack  
```
tar xjf postgresql-9.6.3.tar.bz2  
```
On **Linux**  
* inside base folder postgresql-9.6.3, prepare makefile for 64 bits compilation  
```
./configure "CFLAGS=-m64" "CXXFLAGS=-m64" "LDFLAGS=-m64" --without-openssl --without-readline --without-zlib  
```
* in src/interfaces/libpq folder
```
make 
```
we can find the library under src/interfaces/libpq

On **Windows**:  
we should install VisualStudio Community with the extra packages for C++ tools.
* open developer command prompt
* go to src folder inside  postgresql-9.6.3
```
nmake /f win32.mak CPU=AMD64
```
we can find the library under interfaces\libpq\Release\

###  Testing the environment ### 
We can try postgres compiling and running a testlibpq.c file. This file is provided by postgres for that purpose. You can find it under test folder.

* Compiling and link  
	gcc -I${POSTGRES_PATH}/include/ -L${POSTGRES_PATH}/lib -o testlibpq.o testlibpq.c -lpq  
* Run test  
    ./testlibpq.o "hostaddr = 127.0.0.1 dbname = postgres user = postgres password = postgres"  

### Deployment instructions for db_api ###
Once the environment is ready we can compile our module using the makefile we can find in the base directory for db_api module.  

* Compile db_api using makefile
```
make or make all
```
and we should have some output like this:  
```
#clean binaries
rm -f object/*.o object/main objectmain_postgres
#compile different connectors: postgres and mariadb
g++ -std=c++14 -I/opt/PostgreSQL/9.6/include -Iinclude -c src/postgres_db.cpp -o object/postgres_db.o
g++ -std=c++14 -I/opt/mysql/include/mariadb -Iinclude -c src/maria_db.cpp -o object/maria_db.o
#compile db_api test
g++ -std=c++14 -I/opt/PostgreSQL/9.6/include -I/opt/mysql/include/mariadb -L/opt/PostgreSQL/9.6/lib -L/opt/mysql/lib/mariadb -Iinclude object/*.o src/main.cpp -o object/main -lpq -lmariadb
```

**optional**
Use static library for mariadb
```
g++ -std=c++14 -I/opt/PostgreSQL/9.6/include -I/opt/mysql/include/mariadb -L/opt/PostgreSQL/9.6/lib -L/opt/mysql/lib/mariadb -Iinclude object/*.o src/main.cpp -o object/main -lpq /opt/mysql/lib/mariadb/libmariadbclient.a -lpthread -ldl -lm
```
We can see how the module has been compiled but also a main file to test it.  

* Run db_api
Execute main object generated in the previous step  
```
./object/main
```


**IMPORTANT**
If we would like to use the compiled libraries we should say to the compiler where is the static library.
```
-L/libs/postgresql/postgresql-9.4.1/src/interfaces/libpq
-L/libs/mariadb/mariadb-connector-c-3.0.2-src/libmariadb
```
