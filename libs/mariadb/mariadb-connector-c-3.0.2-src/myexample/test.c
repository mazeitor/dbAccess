/* Copyright (C) 2005, 2006 Hartmut Holzgraefe
   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 
*/

/*
 * MySQL C client API example: mysql_get_client_info()
 *
 * see also http://mysql.com/mysql_get_client_info
 */

#include <stdlib.h>
#include <stdio.h>

#include <mysql.h>

MYSQL *conn;

int main(int argc, char **argv) 
{
    conn = mysql_init ( NULL );
    //mysql_real_connect ( conn, "localhost", "root",
    //        "root1234", "test", 3308, NULL, 0 );
//	version = mysql_get_server_version( conn );
//	printf("\nMySQL Version = %d\n",version);
 //   mysql_close ( conn );
    return 0;
}
