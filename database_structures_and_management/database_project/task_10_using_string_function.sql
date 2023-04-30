/*
Task 10: Use the String function

Create a SQL SELECT query using appropriate MySQL string function to list "Booking Details" including booking ID, booking date and number of guests. The data must be listed in the same format as the following example:

ID: 10, 

Date: 2021-11-10, 

Number of guests: 5
*/
select concat('ID: ', BookingID, ', Date: ', BookingDate, ', Number of Guests: ', NumberOfGuests) as 'Booking Details' from Bookings;
