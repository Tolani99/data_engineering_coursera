/*
INNER JOIN

This type of JOIN returns records of data that have matching values in the joined tables. For example, assume that you want to return the full name and booking ID of customers who made bookings. In this situation, you can use the INNER JOIN clause to extract records of data from the Customers and the Bookings tables based on the matching customer ID value as follows.
*/
SELECT Customers.FullName, Bookings.BookingID 

 FROM Customers INNER JOIN Bookings 

 ON Customers.CustomerID = Bookings.CustomerID; 
