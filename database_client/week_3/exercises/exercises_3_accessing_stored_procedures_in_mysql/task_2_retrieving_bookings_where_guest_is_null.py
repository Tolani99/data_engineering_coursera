"""
Task 2:

Help little lemon to retrieve all those bookings where the guests did not appear today. How will you implement this task using a stored procedure? Use NoArrival as a name for your stored procedure. 


TIP: Target the Orders and the Bookings tables, join them on BookingID and retrieve the records with a NULL value in the bill amount. Create a stored procedure, call it by its name using Python and print the results.  
"""
from task_1_issuing_discount_coupon import cursor
sql_stmt = """
CREATE PROCEDURE NoArrival()
BEGIN
SELECT
     b.BookingID, o.BillAmount 
FROM 
     Bookings b
LEFT JOIN 
     Orders o on b.BookingID = o.BookingID 
WHERE 
     BillAmount is null;
END
"""
cursor.execute(sql_stmt)
cursor.callproc("NoArrival")
results = next(cursor.stored_results())
datasets = results.fetchall()
print(results.column_names)
for data in datasets:
    print(data)
