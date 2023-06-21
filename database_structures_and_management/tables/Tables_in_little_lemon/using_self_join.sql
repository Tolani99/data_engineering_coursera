select Customers.FullName, Bookings.BookingID from Customers SELF JOIN Bookings on Customers.CustomerID = Bookings.CustomerID;
