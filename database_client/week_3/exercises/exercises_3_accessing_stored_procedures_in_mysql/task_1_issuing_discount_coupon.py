"""
Task 1:

Little Lemon is running a marketing campaign this month. They need to issue a discount coupon to the top spender on daily bases.

Create a stored procedure TopSpender that can retrieve the following:

the booking ID,

guest’s full name,

and the bill amount of the top spender at closing.

Call the procedure and print the results.
"""

import mysql.connector as connector
connection = connector.connect(username = "root", password = "tolamath")
cursor = connection.cursor()
cursor.execute("USE little_lemon")

# sql statement

sql_stmt= """
CREATE PROCEDURE TopSpender()
BEGIN
    SELECT
        b.BookingID,
        CONCAT(b.GuestFirstName, ' ', b.GuestLastName) AS CustomerName,
        MAX(o.BillAmount) AS Top_Amount
    FROM Bookings b
    INNER JOIN Orders o ON b.BookingID = o.BookingID
    GROUP BY b.BookingID, CustomerName
    ORDER BY Top_Amount DESC
    LIMIT 1;
END 
"""

# executing stored procedure
#cursor.execute(sql_stmt)

# creating the stored procedure
#cursor.callproc("TopSpender")

# passing the stored procedure
#results = next(cursor.stored_results())

# fetching the results
#datasets = results.fetchall()

#for i in datasets:
#    print(i)
