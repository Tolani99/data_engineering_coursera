select c.ClientID as "Client ID", c.FullName as "Full name", o.OrderID as "Order ID", o.Quantity, o.Cost from Clients as c left join Orders as o on c.ClientID = o.ClientID;
