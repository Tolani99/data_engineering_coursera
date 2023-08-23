"""
Task 2: Implement a stored procedure called PeakHours
Step one: Write a SQL CREATE PROCEDURE query for PeakHours

Use HOUR to extract the hour part from the BookingSlot.

Use COUNT on hour to count the number of bookings.

Use GROUP BY on booking hour.

Use ORDER BY on the number of bookings in descending order.

Step two: Run the stored procedure query by invoking execute module on the cursor.

Step three: Invoke callproc to call the stored procedure.

Step four: Fetch the results in a variable called dataset.

Step five: Extract the names of the columns.

Step six: Print the names of the columns.

Step seven: Print the sorted data using for loop.
"""
from task_1_establish_a_connection_pool import cursor
cursor.execute("USE little_lemon_db")

PeakHour = """CREATE PROCEDURE PeakHours()
BEGIN
    SELECT
        HOUR(BookingSlot) AS Hour, 
        COUNT(HOUR(BookingSlot)) AS Num_Booking_Slot
    FROM Bookings
    GROUP BY Hour
    ORDER BY Num_Booking_Slot DESC;
END
"""
cursor.execute(PeakHour)
cursor.callproc("PeakHours")
results = next(cursor.stored_results())
dataset = results.fetchall()
col_names = results.column_names

print(col_names)
for data in dataset:
    print(data)
