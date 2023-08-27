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
"""
from task_1_establish_a_connection_pool import pool
cursor.execute("USE little_lemons")

try:
    conn1 = pool.get_connection()
    conn2 = pool.get_connection()

    cursor1 = conn1.cursor()
    cursor2 = conn2.cursor()

    # Insert data for Guest 1
    cursor1.execute("INSERT INTO Bookings(Table Number
