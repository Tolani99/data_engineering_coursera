"""
Task 1:

Little Lemon wants to retrieve the number of bookings in each hour so that they can schedule their staff’s duties accordingly. Use the following steps as a guide to complete this task:

Step 1: Target the BookingID and BookingSlot columns from the Bookings table.

Step 2: Extract the hour from the BookingSlot column and count the bookings in each hour.

Step 3: Group and order the data by hour.
"""

# Import APIs
import mysql.connector as connector

# Establish connections
connection = connector.connect(user = "root", password = "tolamath")

# Use cursor object
cursor = connection.cursor()

# Use the Execute statement
cursor.execute("USE little_lemon")
#cursor.execute("SHOW TABLES")
#results = cursor.fetchall()
#for i in results:
#    print(i)

# sql query statement
sql_stmt = """
SELECT HOUR(BookingSlot) AS Hour,
       COUNT(BookingID) AS NumBookings
FROM Bookings
GROUP BY Hour
ORDER BY Hour;
"""
# Execute query statement
cursor.execute(sql_stmt)

# Fetch results
results = cursor.fetchall()

# Print Bookings 
print("Upcoming Bookings: ")

# Use Hour and Bookings
for row in results:
    Hour = row[0]
    Bookings = row[1]
    print("Hour: {} <<>> {} Booking/s".format(Hour, Bookings))

