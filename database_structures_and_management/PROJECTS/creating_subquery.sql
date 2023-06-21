/*
Task 7: Create a subquery

Create a SQL statement with a subquery that prints the full names of all customers who made bookings in the restaurant on the following date: 2021-11-11.
*/
select FullName from Customers where CustomerID in(select CustomerID from Bookings where BookingDate = '2021-11-11');
