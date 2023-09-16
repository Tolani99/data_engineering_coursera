"""
Task 4:
Create a stored procedure named BasicSalesReport that returns the following statistics:

Total sales

Average sale

Minimum bill paid

Maximum bill paid
"""

# Import Python/MySql Connection
import mysql.connector as connector

# Create a connection
connection = connector.connect(user = 'root', password = 'tolamath')

from task_1_establish_a_connection_pool import pool_b, Error

# Add the connection into the pool
pool_b.add_connection(cnx = connection)
cursor.execute("DROP PROCEDURE IF EXISTS BasicSalesReport;")


sql_stmt = """CREATE PROCEDURE BasicSalesReport()
BEGIN
    SELECT SUM(TotalAmount) AS TotalSales,
           AVG(TotalAmount) AS AverageSale,
           MIN(TotalAmount) AS MinimumBillPaid,
           MAX(TotalAmount) AS MaximumBillPaid
    FROM Orders;
END 
"""

# Execute the query
cursor.execute(sql_stmt)

#*******************************#

# Call the stored procedure with its name
cursor.callproc("BasicSalesReport")

# Retrieve records in "dataset"
results = next(cursor.stored_results())
dataset = results.fetchall()

# Retrieve column names using list comprehension in a 'for' loop
for column_id in cursor.stored_results():
    columns = [column[0] for column in column_id.description]

# Print column names
print(columns)

# Print data
for data in dataset:
    print(data)
