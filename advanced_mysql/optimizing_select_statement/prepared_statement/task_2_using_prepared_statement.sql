/*
Task 2

Lucky Shrub need you to help them to create a prepared statement called GetOrderDetail. The prepared statement should accept two input arguments: a ClientID value and a year value. The statement should return the order id, the quantity, the order cost and the order date from the Orders table.
*/
prepare GetOrderDetails from 'select OrderID, Quantity, Cost, Date from Orders where ClientID = ? and Year(Date) = ?'
set @ID = 'Cl1';
set @Year = 2020;
EXECUTE GetOrderStatement using @ID, @Year;
