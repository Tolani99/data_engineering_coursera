"""
Task 1
Little Lemon are preparing the restaurant for today’s bookings. Their first task is to determine how many bookings they have today for each table.
"""

# Import Connector APIs
import mysql.connector as connector

# Establish Connection
connection = connector.connect(user = "root", password = "tolamath")

# Create a Cursor
cursor = connection.cursor()

# Use little_lemon database
cursor.execute("USE little_lemon")

# Show little_lemon
#cursor.execute("SHOW TABLES")
#for i in cursor:
#    print(i)

# The sql statement to perform the join operation
join_stmt = """
SELECT 
    Bookings.TableNo AS 'Table number', 
    Orders.Quantity AS n_booking 
FROM 
    Bookings 
LEFT JOIN 
    Orders 
ON 
    Bookings.BookingID = Orders.BookingID 
ORDER BY 
    'Table number' DESC;
"""

# Execute
cursor.execute(join_stmt)

# Column names
cols = cursor.column_names

# Result
result = cursor.fetchall()

# Printing the column names and result
print(cols)
for i in result:
    print(i)

