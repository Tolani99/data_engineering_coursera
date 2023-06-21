/*
Task 2: Write a SQL SELECT query using an appropriate date function and a format string to find the name of the weekday on which M&G’s orders are to be delivered.

The expected output result should be like the following screenshot (if you have same data set populated in the orders table).
*/
select date_format(DeliveryDate, '%W') from mg_orders;
