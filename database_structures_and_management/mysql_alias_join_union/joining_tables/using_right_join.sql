/*
RIGHT JOIN

You can use the RIGHT JOIN clause to extract the full names and the booking IDs from the Customers and the Bookings tables as follows:
*/
select Customers.FullName, Bookings.BookingID from Customers RIGHT JOIN Bookings on Customers.CustomerID = Bookings.CustomerID;
