select Clients.ClientID as "Client ID", Clients.FullName as "Full Name", Clients.ContactNumber as "Phone Number",
Orders.ProductID as "Product code", Orders.Quantity as "Item Quantity", Orders.Cost from Clients inner join Orders on Clients.ClientID =
Orders.ClientID;

