# Print a message to guide the user
# Import MySQL Connector/Python 
print("Importing MySQL Connector/Python API")
import mysql.connector as connector
print("MySQL Connector/Python API is imported successfully.\n")

# Establish connection with authorized user/password
print("Establishing a new connection between MySQL and Python.")

#connection=connector.connect(user="your_username",password="your_password")

connection=connector.connect(user="root",password="")
print("A connection between MySQL and Python is successfully established")
