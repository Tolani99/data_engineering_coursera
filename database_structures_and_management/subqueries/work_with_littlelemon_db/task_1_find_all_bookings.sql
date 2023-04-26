/*
Task 1: Write a SQL SELECT query to find all bookings that are due after the booking of the guest ‘Vanessa McCarthy’.

The expected output result should be the same as the following screenshot (assuming that you have created and populated the orders tables correctly).
*/
select * from Bookings where BookingSlot > (select BookingSlot from Bookings where GuestFirstName = '
Vanessa' and GuestLastName = 'McCarthy');
