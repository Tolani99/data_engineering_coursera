/*
Task 2: Write a SQL SELECT statement to retrieve the number of orders placed on the same day.

The expected output result should be the same as the following screenshot assuming that you have created and populated the tables correctly.
*/
select OrderDate, count(OrderID) from orders group by OrderDate;
