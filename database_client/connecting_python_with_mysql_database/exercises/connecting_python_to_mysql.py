import mysql.connector as connector
connection = connector.connect(user='root', password='tolamath')
cursor = connection.cursor()
create_database_query="""CREATE DATABASE okay_now"""
cursor.execute(create_database_query)
