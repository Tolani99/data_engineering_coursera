"""
Task 3:

It is very important for little lemon to keep track of the status of each guest’s order and display it on the screen to keep their guests informed.

This is how they categorize the orders:

If not assigned to any employee, the status is In Queue

If assigned to the employees with IDs 4 and 5, the status is Preparing Order

If assigned to the employees with IDs 1, 2, and 3, the status is Order Served


Create a stored procedure named OrderStatus for the above task and call to check if everything is working.
"""
from task_1_issuing_discount_coupon import cursor
sql_stmt = """
CREATE PROCEDURE OrderStatus()
BEGIN
SELECT BookingID,
    CASE
        WHEN EmployeeID IS NULL THEN 'In Queue'
        WHEN EmployeeID IN (4, 5) THEN 'Preparing Order'
        ELSE 'Order Served'
    END AS Status
FROM Bookings;
END
"""
cursor.execute(sql_stmt)
cursor.callproc("OrderStatus")
results = next(cursor.stored_results())
datasets = results.fetchall()
print(results.column_names)
for data in datasets:
    print(data)
