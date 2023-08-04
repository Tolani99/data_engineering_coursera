"""
An exceise to filter and store data in mysql
database
"""

# Importing APIs
import mysql.connector as connector

# Establishing connection
connection = connector.connect(user = "root", password = "tolamath")

# Creating cursor to communicate with entire MySQL
cursor = connection.cursor()

# Selecting Database
cursor.execute("USE little_lemon")

# Retrieving the columns in Task1
select_stmt = """SELECT TableNo, GuestFirstName, GuestLastName, EmployeeID
FROM Bookings
WHERE TableNo = 12;"""

# Execute the select_stmt
cursor.execute(select_stmt)

# Store in 'results' variable
results = cursor.fetchall()

# Extract column names
cols = cursor.column_names

# Print cols and results
print(cols)
for i in results:
    print(i)

