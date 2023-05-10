/*
This SQL query retrieves a combined list of all clients and their corresponding orders, regardless of whether they have placed any orders or not. The result set includes the client ID, full name, contact number, order ID, cost, and date for each record.

The query uses a UNION operator to combine the results of two SELECT statements. The first SELECT statement retrieves records from the Clients table using a LEFT JOIN on the Orders table, while the second SELECT statement retrieves records from the Orders table using a RIGHT JOIN on the Clients table. This ensures that all records from both tables are included in the result set.
*/
select Clients.ClientID, Clients.FullName, Clients.ContactNumber, Orders.OrderID, Orders.Cost, Orders.Date from Clients left join Orders on Clients.ClientID = Orders.ClientID union select Clients.ClientID, Clients.FullName, Clients.ContactNumber, Orders.OrderID, Orders.Cost, Orders.Date from Clients RIGHT JOIN Orders on Clients.ClientID = Orders.ClientID;
/*
Note that the UNION operator removes duplicates from the result set. If you want to include duplicates, you can use UNION ALL instead.
*/
