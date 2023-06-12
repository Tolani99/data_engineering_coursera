"""
Task 1:

Little Lemon need to know what tables currently exist in the database. You need to help them retrieve the names of all the existing tables in their database.

To access the names of the existing tables in the Little Lemon database, set the database little_lemon in use. Then, create a cursor object and execute SHOW TABLES to retrieve the names of the tables in the database. Fetch all the names in a variable and use the for loop to print the output.   
"""
import mysql.connector as connector
connection = connector.connect(user="root", password="tolamath")
cursor = connection.cursor()
cursor.execute("show databases")
#for database in cursor:
#    print(database)
cursor.execute("use little_lemon")
cursor.execute("show tables")
for tables in cursor:
    print(tables)
