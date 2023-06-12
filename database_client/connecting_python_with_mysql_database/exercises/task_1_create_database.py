"""
Task 1:

Little Lemon needs to create a database that can hold their tables. Create a MySQL database for Little Lemon using Python. You can call the database little_lemon.

You also need to confirm that the database has been successfully executed using the SHOW DATABASE query. The expected output of the query must resemble the following screenshot
"""
import mysql.connector as connector
connection = connector.connect(user='root', password='tolamath')
cursor = connection.cursor()
cursor.execute("show databases")
for database in cursor:
    print(database)
