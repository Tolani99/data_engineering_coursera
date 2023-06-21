/*
Lucky Shrub need information on all their clients and the orders that they placed in the years 2022 and 2021. See if you can help them by extracting the required information from each of the following tables:

Clients table: The client id and contact number for each client who placed an order

Addresses table: The street and county for each client's address

Orders table: The order id, cost and date of each client’s order.

Products table: The name of each product ordered.
*/
SELECT Clients.ClientID, Clients.ContactNumber, Addresses.Street, Addresses.County,  Orders.OrderID, Orders.ProductID, Products.ProductName, Orders.Cost, Orders.Date

FROM Clients

INNER JOIN Addresses ON Clients.AddressID = Addresses.AddressID

INNER JOIN Orders ON Clients.ClientID = Orders.ClientID

INNER JOIN Products ON Orders.ProductID = Products.ProductID

WHERE YEAR (Orders.Date) = 2021 OR YEAR (Orders.Date) = 2022 ORDER BY Orders.Date;

/*
The given SQL query will return a result set that includes the client information, order information, and product information for all orders made in the years 2021 and 2022, sorted by the order date.

Here is the breakdown of the SQL query:

SELECT Clients.ClientID, Clients.ContactNumber, Addresses.Street, Addresses.County,  Orders.OrderID, Orders.ProductID, Products.ProductName, Orders.Cost, Orders.Date
This line specifies the columns that will be returned in the result set. It includes the ClientID and ContactNumber columns from the Clients table, the Street and County columns from the Addresses table, the OrderID, ProductID, Cost, and Date columns from the Orders table, and the ProductName column from the Products table.

sql
Copy code
FROM Clients
INNER JOIN Addresses ON Clients.AddressID = Addresses.AddressID
INNER JOIN Orders ON Clients.ClientID = Orders.ClientID
INNER JOIN Products ON Orders.ProductID = Products.ProductID
This section of the query uses inner joins to combine data from multiple tables. It joins the Clients table with the Addresses table on the AddressID column, the Clients table with the Orders table on the ClientID column, and the Orders table with the Products table on the ProductID column.

WHERE YEAR (Orders.Date) = 2021 OR YEAR (Orders.Date) = 2022
This line specifies a filter condition to only return orders that were made in the years 2021 or 2022.

ORDER BY Orders.Date;
This line specifies that the result set should be sorted in ascending order by the date of the order.

The final result set will include information about clients, addresses, orders, and products for all orders made in 2021 and 2022, sorted by the order date.
*/

