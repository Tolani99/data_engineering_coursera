import mysql.connector as connector

try:
    connection=connector.connect(
        user="ameta",
        password="password",
        database = "no_database")

except connector.Error as er:
    print("Error code:", er.errno)
    print("Error message:", er.msg)
