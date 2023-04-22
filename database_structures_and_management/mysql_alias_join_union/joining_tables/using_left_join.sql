select Customers.FullName, Bookings.BookingID from Customers left join Bookings on Customers.CustomerID = Bookin
gs.CustomerID;
