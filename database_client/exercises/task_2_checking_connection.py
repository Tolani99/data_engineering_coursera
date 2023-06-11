import mysql.connector as connector
connection = connector.connect(user="root", password="tolamath")
cursor = connection.cursor()
cursor.execute("use little_lemon")
print(connection.database)
