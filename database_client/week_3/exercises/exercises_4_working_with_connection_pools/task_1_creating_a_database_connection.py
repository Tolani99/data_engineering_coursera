"""
Task 1:

Create a database connection pool with three connections available for the users to connect to the database with. You need to import MySQLConnectionPool class and pass the following arguments:

pool_name = “ll_pool_a”

pool_size = 3

**dbconfig
"""
import mysql.connector as connector
connection = connector.connect(username = "root", password = "tolamath")
cursor = connection.cursor()
cursor.execute("USE little_lemon")
dbconfig = {"host":"localhost",
            "database":"little_lemon", 
            "user":"root", 
            "password":"tolamath"}

from mysql.connector.pooling import MySQLConnctionPool
try:
    pool = MySQLConnectionPool(pool_name = "ll_pool_a ", 
                          pool_size = 3,
                          **dbconfig)

    print("The connection pool is created with a name:  {}".format(pool.pool_name))
    print("The pool size is: ", pool.pool_size)

except Error as er:
    print("Error code: ", er.errno)
    print("Error message: ", er.msg)
    
"""
Use the actual name of the database together with authenticated username and password in the above configuration.

Use the Error class from mysql.connector to handle a possible error in an instance where the wrong parameters are passed on the database configuration.
"""
