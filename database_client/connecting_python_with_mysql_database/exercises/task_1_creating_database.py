import mysql.connector as connector
connection = connector.connect(user="root", password="tolamath")
cursor = connection.cursor()
cursor.execute("show databases")
#for database in cursor:
#    print(database)

