"""
Task 3:

A guest with booking ID 2 and table number 12 wants to change their arrival time by one hour from 7pm to 8pm. Help Little Lemon to make this change using Python in their application. Use the following steps as a guide to complete this task:

Step 1: Target BookingID, TableNo and BookingSlot columns in the Bookings table. 

Step 2: Add one hour in the BookingSlot. 

Step 3: Use the WHERE clause on TableNo and BookingID columns. 

"""
# Importing modules
from tasks_1_retrieving_number_of_bookings import cursor
import datetime as dt

# Sql statement
sql_statement = """
SELECT
    BookingID,
    TableNo,
    BookingSlot
FROM
    Bookings;
"""

# Execute the sql statement
cursor.execute(sql_statement)

# Printing the results
results = cursor.fetchall()
print("Booking time change ALERT!!")
for row in results:
    Booking_ID = row[0]
    Table_No = row[1]
    Booking_Slot = row[2]
    if Booking_ID == 2 and Table_No == 12:
        New_Booking_Slot = Booking_Slot + dt.timedelta(hours = 1)
        print("Booking ID: {}".format(Booking_ID))
        print("Table number: {}".format(Table_No))
        print("Booked slot: {}".format(Booking_Slot))
        print("New arrival time: {}".format(New_Booking_Slot))

