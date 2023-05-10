prepare GetOrderStatement from 'select ClientID, ProductID, Quantity, Cost from Orders where OrderID = ?';
SET @order_id = 10;
EXECUTE GetOrderStatement USING @order_id;
