/*
Task 5: Generate data required for the report by retrieving a list of M&G orders yet to be delivered. These orders have an 'In Progress' status using the NULLIF function.
*/
SELECT OrderID, NULLIF(OrderStatus,'In Progress') AS status 

FROM mg_orders;
