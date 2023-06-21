/*
Task 2: Create a JOIN query.

Create a JOIN SQL statement on the Customers and Bookings tables. The statement must print the customers full names and related bookings IDs from the date 2021-11-11.
*/
select Customers.FullName, Bookings.BookingID from Customers inner join Bookings on Customers.CustomerID = Bookings.CustomerID where BookingDate = '2021-11-11';
