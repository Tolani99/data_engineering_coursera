"""
Guest 2:

Table Number: 5

First Name: Bald

Last Name: Vin

Booking Time: 19:00

EmployeeID: 6


Guest 3:

Table Number: 12

First Name: Jay

Last Name: Kon

Booking Time: 19:30

EmployeeID: 6


Return all the connections back to the pool.

TIP: The pool size is two. However, you have three connected users. You can only return two connections. Returning a third connection will raise a PoolError. Use try-except to print the error message.
"""

guests_data = [
        (7, 8, "Anees", "Java", "18:00", 6),
        (8, 5, "Bald", "Vin", "19:00", 6),
        (9, 12, "Jay", "Kon", "19:30", 6)
]

from task_1_establish_a_connection_pool import pool_b, Error

try:
    conn = pool_b.get_connection()
    cursor = conn.cursor()
    cursor.execute("USE little_lemon_db")

    insert_query = "INSERT INTO Bookings (BookingID, TableNo, FirstName, LastName, BookingSlot, EmployeeID) VALUES (%s, %s, %s, %s, %s, %s)"
    cursor.executemany(insert_query, guests_data)
    
    conn.commit()
    print("Guest data inserted successfully.")

except Error as e:
    print("Error inserting guest data:", e)

finally:
    cursor.close()
    conn.close()
