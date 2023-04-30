/*
Task 8: Create a virtual table

Create the "BookingsView" virtual table to print all bookings IDs, bookings dates and the number of guests for bookings made in the restaurant before 2021-11-13 and where number of guests is larger than 3.
*/
create procedure GetBookingDate(InputDate date) select * from Bookings where BookingDate = InputDate;
call GetBookingDate('2021-11-13');
