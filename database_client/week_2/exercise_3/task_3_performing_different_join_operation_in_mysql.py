"""
Task 3:

Little Lemon restaurant need you to help them retrieve the following information from the Bookings and the Orders tables in their MySQL database using Python:

Booking ID,

Table number,

Guest first name,

And Bill amount.
"""
from task_1_performing_different_join_operation_in_mysql import cursor
join_query = """
SELECT 
    Bookings.BookingID, 
    Bookings.TableNo,
    Bookings.GuestFirstName,
    Orders.BillAmount
FROM
    Bookings
LEFT JOIN
    Orders
ON
    Bookings.BookingID = Orders.BookingID
"""
# Executing the join query
cursor.execute(join_query)

# Fetching results
result = cursor.fetchall()

# Getting the column names
columns = cursor.column_names

# Printing column names and result
print(columns)
for i in result:
    print(i)
