"""
Task 3: Implement a stored procedure GuestStatus
Step one: Write a SQL CREATE PROCEDURE query for GuestStatus.

Step two: Combine the guest’s first and last name from the booking column using CONCAT.

Step three: Use CASE to implement the following statuses for each guest’s order:

If the Role in the Employee table is Manager or Assistant Manager then the guest’s order status is Ready to pay

If the Role in the Employee table is Head Chef then the status is Ready to serve

If the Role in the Employee table is Assistant Chef then the status is Preparing Order

If the Role in the Employee table is Head Waiter then the status is Order served

Step four: LEFT JOIN Bookings table with Employees ON EmployeeID

Step five: Run the stored procedure query by invoking execute module on the cursor.

Step six: Invoke callproc to call the stored procedure.

Step seven: Fetch the results in a variable called dataset.

Step eight: Extract the names of the columns.

Step nine: Print the names of the columns.

Step ten: Print the sorted data using for loop.

Step eleven: Close the connection to return it back to the pool.
"""
from task_1_establish_a_connection_pool import cursor

cursor.execute("USE little_lemon_db")
sql_stmt = """CREATE PROCEDURE GuestStatus()
BEGIN
    SELECT 
        B.BookingID, 
        CONCAT(B.GuestFirstName, " ", B.GuestLastName) AS GuestFullName, 
        E.Role, 
        CASE
            WHEN E.Role IN('Manager', 'Assistant Manager') THEN 'Ready to pay'
            WHEN E.Role IN('Head Chef') THEN 'Ready to serve'
            WHEN E.Role IN('Assistant Chef') THEN 'Preparing Order' 
            WHEN E.Role IN('Head Waiter') THEN 'Order served' END AS guest_status 
    FROM Bookings B LEFT JOIN Employees E ON B.EmployeeID = E.EmployeeID;
END
"""
cursor.execute(sql_stmt)
cursor.callproc("GuestStatus")
results = next(cursor.stored_results())
datasets = results.fetchall()
print(results.column_names)
for i in datasets:
    print(i)
cursor.close()
