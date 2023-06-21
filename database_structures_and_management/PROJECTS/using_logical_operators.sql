/*
Task 1: Filter data using the WHERE clause and logical operators.

Create SQL statement to print all records from Bookings table for the following bookings dates using the BETWEEN operator: 2021-11-11, 2021-11-12 and 2021-11-13. 
*/
select * from Bookings where BookingDate between '2021-11-11' and '2021-11-13';
