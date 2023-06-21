/*
Task 8 solution
Lucky Shrub need a summary of their client's details, including their addresses, order details and the products they purchased. Help them out by creating a virtual table called DataSummary that joins together the four tables that contain this data.

These four tables are as follows:

Clients,

Addresses,

Orders,

and Products.

The virtual table must display the following data:

The full name and contact number for each client from the Clients table.

The county that each client lives in from the Addresses table.

The name of the product they purchased from the Products table.

and the ProductID, cost and date of each order from the Orders table.
*/
CREATE VIEW DataSummary AS SELECT Clients.FullName, Clients.ContactNumber, Addresses.County, Products.ProductName, Orders.ProductID, Orders.Cost, Orders.Date FROM Clients INNER JOIN Addresses ON Clients.AddressID = Addresses.AddressID INNER JOIN Orders ON Clients.ClientID = Orders.ClientID INNER JOIN Products ON Orders.ProductID = Products.ProductID WHERE YEAR(Orders.Date) = 2022 ORDER BY Orders.Cost DESC;

/*
This SQL statement creates a new view called "DataSummary" which provides a summary of data from the "Clients", "Addresses", "Orders", and "Products" tables. The view selects the full name and contact number of clients, the county of their address, the name of the products they ordered, the product ID, the cost of the orders, and the date of the orders.

The view is filtered to only include orders from the year 2022 using the YEAR() function on the "Orders.Date" field. The results are sorted by the order cost in descending order using the ORDER BY clause.

Once this view is created, it can be queried just like a table to retrieve the summarized data it contains.
*/
