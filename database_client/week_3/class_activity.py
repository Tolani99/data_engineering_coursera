# Import APIs
import mysql.connector as connector
import datetime as dt

# Establish a connection 
connection = connector.connect(user = "root", password = "tolamath")

# Use cursor to link sql and python
cursor = connection.cursor()

# Use little_lemon database
cursor.execute("USE little_lemon")

# Write the select statement
select_stmt = "SELECT * FROM Bookings;"

# Execute the cursor statement
cursor.execute(select_stmt)

# Column Names
columns = cursor.column_names

# Print column names
print(columns)

# Move the booking slot by 1 hr
for row in cursor:
    booking_id = row[0]
    booking_slot = row[4]
    new_booking_slot = booking_slot + dt.timedelta(hours = 1)
    print("booking id {} is moved from {} to {}".format(booking_id, booking_slot, new_booking_slot))
