/*
alter table ORDERS add column ExpectedDeliveryDate DATE;
select * from Clients where FullName like '%Ito';
alter table Clients add column ReverseFullName varchar(200);
update Clients set ReverseFullName = concat(substring_index(FullName, ' ', -1), ' ', substring_index(FullName, ' ', 1));
*/
select P.ProductID, P.ProductName, O.OrderID, O.ClientID, O.Cost from Products as P inner join Orders as O on P.ProductID = O.ProductID;
/*
The SQL statement select P.ProductID, P.ProductName, O.OrderID, O.ClientID, O.Cost from Products as P inner join Orders as O on P.ProductID = O.ProductID; performs an inner join between the Products and Orders tables.

The resulting table will contain the following columns:

ProductID: the ID of the product ordered
ProductName: the name of the product ordered
OrderID: the ID of the order
ClientID: the ID of the client who placed the order
Cost: the cost of the order
The join condition on P.ProductID = O.ProductID specifies that the join should be performed based on the ProductID column of both tables.

This query will return a result set that contains all orders and their associated products. If there are no matching products for a given order, that order will not be included in the result set.

By joining the tables on the common ProductID column, the query can retrieve all the information needed in a single operation, rather than requiring multiple separate queries or complex subqueries.

Using table aliases (P for Products and O for Orders) also improves the readability and maintainability of the query, especially when dealing with larger tables with many columns.

Overall, using an inner join in this way is a standard and efficient method for querying data from multiple tables in SQL.
*/
