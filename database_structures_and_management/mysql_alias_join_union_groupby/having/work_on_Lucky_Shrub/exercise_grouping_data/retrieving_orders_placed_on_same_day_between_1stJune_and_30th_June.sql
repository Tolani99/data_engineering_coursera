/*
Task 4: Write a SQL SELECT statement to retrieve the number of orders placed on the same day between the following dates: 1st June 2022 and 30th June 2022.

The expected output result should be the same as the following screenshot assuming that you have created and populated the tables correctly.
*/
SELECT OrderDate, COUNT(OrderID) FROM orde
rs GROUP BY OrderDate HAVING OrderDate BETWEEN '2022-06-01' AND '
2022-06-30';
