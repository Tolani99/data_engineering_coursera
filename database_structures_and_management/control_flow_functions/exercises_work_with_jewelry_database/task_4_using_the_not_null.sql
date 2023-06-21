/*
Task 4: Review the query that you wrote in the second task. Use an appropriate comparison function to filter out the records that do not have a NULL value in the delivery date column.

The expected output result should be like the following screenshot (if you have same data set populated in the orders table).
*/
select date_format(DeliveryDate, '%W') from mg_orders where DeliveryDate is not null;
