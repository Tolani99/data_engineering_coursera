"""
Task 4:
Create a stored procedure named BasicSalesReport that returns the following statistics:

Total sales

Average sale

Minimum bill paid

Maximum bill paid

"""

sql_stmt = """CREATE PROCEDURE BasicSalesReport()
BEGIN
    SELECT SUM(TotalAmount) AS TotalSales,
           AVG(TotalAmount) AS AverageSale,
           MIN(TotalAmount) AS MinimumBillPaid,
           MAX(TotalAmount) AS MaximumBillPaid
    FROM Orders;
END 
"""
