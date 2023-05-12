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
