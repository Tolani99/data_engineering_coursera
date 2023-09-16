"""
Task 5:

Little Lemon needs to display the next three upcoming bookings from the Bookings table on the kitchen screen to notify their chefs that the orders are due.

Get a connection from the pool.

Create a buffered cursor.

Combine the data from the Bookings and the Employee tables, sort the retrieved records in ascending order, and display the information of the first three guests.

Return the connection back to the pool.
"""
# Import pool_b
from task_1_establish_a_connection_pool import pool_b

# Establish connection
connection = pool_b.get_connection()

# Create Cursor Object
cursor = connection.cursor(buffered = True)

# Sql statement
sql_query = """
SELECT
    Bookings.BookingSlot, 
    CONCAT(Bookings.FirstName, " ", Bookings.LastName) AS Guest_Name,
    Employees.Name AS Emp_Name,
    Employees.Role AS Emp_Role
FROM Bookings
INNER JOIN
    Employees ON Bookings.EmployeeID = Employees.EmployeeID
ORDER BY Bookings.BookingSlot ASC;"""

# Execute
cursor.execute(sql_query)
results = cursor.fetchmany(size = 3)

# Print(cursor.column_names)
for result in results:
    print("\nBookingSlot", result[0])
    print("\tGuest_name:", result[1])
    print("\tIs Assigned to:", result[2], "[{}]".format(result[3]))

# Close connection
connection.close()
