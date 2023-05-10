select Clients.ClientID, Clients.ContactNumber,
       Orders.OrderID, Orders.Quantity, Orders.Date,
       Products.NumberOfItems as 'Items in stock' from 
       Clients inner join Orders inner join Products
       on(Clients.ClientID = Orders.ClientID and Orders.ProductID = Products.ProductID)
       where(Orders.Quantity >= 10 and Date > '2020-09-05' and Products.NumberOfItems >= 50);
