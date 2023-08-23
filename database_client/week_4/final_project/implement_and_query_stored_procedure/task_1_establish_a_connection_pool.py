"""
Task 1: Establish a connection
Step one: Import MySQLConnectionPool

Step two: Import Error

Step three: Create a pool named pool_a with two connections. Use a try-except block to handle any possible errors.
"""
# Import Mysql/Python Connector
import mysql.connector as connector

# Establish Connection
connection = connector.connect(user = "root", password = "tolamath")

# Create a cursor object
cursor = connection.cursor()

dbconfig = {"database":"little_lemon_db", 
            "user":"root",
            "password":"tolamath"}

from mysql.connector.pooling import MySQLConnectionPool
try:
    pool = MySQLConnectionPool(
       pool_name = "pool_a",
       pool_size = 2,
       **dbconfig)
    print("The connection pool is created with a name {}".format(pool.pool_name))
    print("The size of the pool is: {}".format(pool.pool_size))
except Error as er:
    print("Error code: ", err.errno)
    print("Error message: ", err.msg)



