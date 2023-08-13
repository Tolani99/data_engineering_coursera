"""
Task 2:

Little Lemon needs to display the following information for their staff:

Each guest’s table number,

Each guest’s full name,

And the expected arrival time in hours and minutes of each guest (e.g., 15 hours and 0 mins).

"""
# Importing modules
from tasks_1_retrieving_number_of_bookings import cursor

# Writing the sql statement
sql_statement = """
SELECT
    TableNo, 
    CONCAT(GuestFirstName, " ", GuestLastName) AS GuestFullName, 
    CONCAT(hour(BookingSlot), " hours") AS Arrival_Time_Hour,
    CONCAT(minute(BookingSlot), " mins") AS Arrival_Time_Minute
FROM 
    Bookings
ORDER BY 
    BookingSlot;
"""

# Executing with cursor
cursor.execute(sql_statement)

# Using results to fetch all
results = cursor.fetchall()

# Priting guest and booking slots
print("The guests and their booking slots are: ")

# Printing results using for loop
for row in results:
    TableNo = row[0]
    GuestFullName = row[1]
    Arrival_Time_Hour = row[2]
    Arrival_Time_Minute = row[3]

    print("[Table no:] {} >> {} is expected to arrive at: {} hrs and {} mins".format(TableNo, GuestFullName, Arrival_Time_Hour, Arrival_Time_Minute))

