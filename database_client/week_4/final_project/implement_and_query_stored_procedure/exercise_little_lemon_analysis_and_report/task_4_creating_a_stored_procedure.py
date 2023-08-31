"""

"""
CREATE PROCEDURE BasicSalesReport()
BEGIN
    SELECT SUM(TotalAmount) AS TotalSales,
           AVG(TotalAmount) AS AverageSale,
           MIN(TotalAmount) AS MinimumBillPaid,
           MAX(TotalAmount) AS MaximumBillPaid
    FROM Orders;
END 
