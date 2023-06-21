/*
Task 1: Little Lemon want a list of all customers who have made bookings. Write an INNER JOIN SQL statement to combine the full name and the phone number of each customer from the Customers table with the related booking date and 'number of guests' from the Bookings table.
*/
select Customers.FullName, Customers.PhoneNumber, Bookings.BookingDate, Bookings.NumberOfGuests from Customers INNER JOIN Bookings on Customers.CustomerID = Bookings.CustomerID;
