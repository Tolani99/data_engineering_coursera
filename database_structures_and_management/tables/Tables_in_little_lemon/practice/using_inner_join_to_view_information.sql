/*
Task 2: Little Lemon want to view information about all existing customers with bookings that have been made so far. This data must include customers who haven’t made any booking yet. 

Write a LEFT JOIN SQL statement to view the customer id from Customers table and the related booking id from the Bookings table. The expected output result should be the same as the following screenshot (assuming that you have created and populate the tables correctly.)
*/
select Customers.CustomerID, Bookings.BookingID from Customers LEFT JOIN Bookings on Customers.CustomerID = Bookings.CustomerID;
