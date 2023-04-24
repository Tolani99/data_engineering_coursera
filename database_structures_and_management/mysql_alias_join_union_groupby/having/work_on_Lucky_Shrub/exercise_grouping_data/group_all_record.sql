/*
Task 1: Write a SQL SELECT statement to group all records that have the same order date.

The expected output result should be the same as the following screenshot, assuming that you have created and populated the tables correctly.
*/
select OrderDate from orders group by OrderDate;
