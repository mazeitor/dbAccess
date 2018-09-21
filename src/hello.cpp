// test.cpp

#include <iostream>

extern "C" {
        #include <libpq-fe.h>
}

using namespace std;

int hola(void) {

     //PQconnectdb("");
     cout << "Hello World" << endl;

     return(0);

}
