/*
Task 3: Create a GROUP BY query.

Create a SQL statement to print the bookings dates from Bookings table. The statement must show the total number of bookings placed on each of the printed dates using the GROUP BY BookingDate. 
*/
select BookingDate, COUNT(BookingDate) from Bookings group by BookingDate;
