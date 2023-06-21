/*
Task 3: Write a SQL SELECT statement to retrieve the total order quantities placed by each department.

The expected output result should be the same as the following screenshot assuming that you have created and populated the tables correctly.
*/
select Department, sum(OrderQty) from orders group by Department;
