/*
Task 4 Solution
Lucky Shrub need location data for their clients and employees. To help them out, create an optimized query that outputs the following data:

The full name of all clients and employees from the Clients and Employees tables in the Lucky Shrub database.  

The address of each person from the Addresses table.
*/
SELECT Employees.FullName, Addresses.Street, Addresses.County 

FROM Employees INNER JOIN Addresses 

ON Employees.AddressID = Addresses.AddressID

UNION

SELECT Clients.FullName, Addresses.Street, Addresses.County 

FROM Clients INNER JOIN Addresses ON Clients.AddressID = Addresses.AddressID 

ORDER BY Street;
/*
The SQL query you provided selects data from three tables: "Employees", "Clients", and "Addresses". The query uses an inner join to join the "Employees" and "Addresses" tables on their "AddressID" columns, and another inner join to join the "Clients" and "Addresses" tables on the same column. The resulting table will have three columns: "FullName" from either the "Employees" or "Clients" table (depending on which part of the query it's coming from), "Street", and "County" from the "Addresses" table.

The "UNION" keyword is used to combine the results of the two SELECT statements into a single table. The first SELECT statement selects the "FullName", "Street", and "County" columns from the "Employees" and "Addresses" tables, respectively, while the second SELECT statement selects the same columns from the "Clients" and "Addresses" tables. The "ORDER BY" clause sorts the result set by the "Street" column in ascending order.

Overall, this query returns a list of all employees and clients along with their respective addresses, sorted by the street name in ascending order. If an employee and a client have the same address, the address will appear only once in the result set.
*/
