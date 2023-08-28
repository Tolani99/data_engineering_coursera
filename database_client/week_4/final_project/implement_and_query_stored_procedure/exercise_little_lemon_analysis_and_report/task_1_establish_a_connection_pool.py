"""
Task 1:
Complete the following steps to establish a connection pool:

To create a connection pool, import MySQLConnectionPool class from MySQL Connector/Python.

To find the information on the error, import the Error class from MySQL Connector/Python.

Define your database configurations as a Python dictionary object called dbconfig.

Establish a connection pool [pool_name = pool_b] with two connections.

Implement error handling using a try-except block in case the connection fails.
"""
# Import Mysql/Python Connector
import mysql.connector as connector

# Establish connection
connection = connector.connect(user = "root", password = "tolamath")

# Create a cursor object
cursor = connection.cursor()

# Import MySQLConnectionPool
from mysql.connector.pooling import MySQLConnectionPool, Error

# Define dbconfig
dbconfig = {"database":"little_lemon_db", 
            "user":"root",
            "password":"tolamath"}

# Establishing a connection pool
try:
    pool = MySQLConnectionPool(pool_name = "pool_b",
                               pool_size = 2,
                                **dbconfig)
    print("Pool name is {} and Pool size is {}".format(pool.pool_name, pool.pool_size))
except Error as err:
    print("Error code is: {}".format(err.errno))
    #print("Error message is: {}".format(err.msg))

