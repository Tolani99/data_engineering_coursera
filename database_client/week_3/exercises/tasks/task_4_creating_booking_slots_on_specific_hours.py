"""
Task 4
Little Lemon’s next task is to find out what time each guest is arriving today. To do this, they need to create three time slots for their guests based on specific booking hours:

Late afternoon: 3pm and 4pm 

Evening: 5pm and 6pm

Night: 7pm and 8pm


Help Little Lemon to create these booking slots. Then help them to retrieve the booking ID, guest name, and booking slot for each guest from the database.
"""
from task_1_utilizing_mysql_functions_with_python import cursor
sql_query = """
SELECT
    BookingID,
    CONCAT(GuestFirstName, " ", GuestLastName) AS GuestName,

CASE
        WHEN HOUR(BookingSlot) BETWEEN 15 AND 16 THEN "Late afternoon"
        WHEN HOUR(BookingSlot) BETWEEN 17 AND 18 THEN "Evening"
        WHEN HOUR(BookingSlot) BETWEEN 19 AND 20 THEN "Night"
        ELSE "Not a Booking Hour"
END AS Arrival_slot

FROM Bookings;
"""
cursor.execute(sql_query)
result = cursor.fetchall()
print(cursor.column_names)
for i in result:
    print(i)
