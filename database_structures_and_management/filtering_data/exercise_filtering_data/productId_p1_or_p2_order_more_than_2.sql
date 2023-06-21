/*
Task 4: Write a SQL statement to print all records of orders that have a product id of p1 or p2 and the order quantity is more than 2. The expected output result should be the same as the following screenshot (assuming that you have populated the Orders table with the same data set
*/
--SELECT * FROM orders WHERE ProductID IN('P1', 'P2') AND Quantity > 2;
SELECT * FROM orders WHERE (ProductID = 'P1' OR ProductID = 'P2') AND Quantity > 2;
