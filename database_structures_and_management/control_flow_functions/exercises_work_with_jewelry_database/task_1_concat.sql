/*
Task 1: Write a SQL SELECT query using appropriate MySQL string functions to list items, quantities and order status in the following format:

Item name–quantity–order status

Item name should be in lower case. Order status should be in upper case.
*/
select concat(LCASE(Name), '-', Quantity, '-', UCASE(OrderStatus)) from item, mg_orders where item.ItemID = mg_orders.ItemID;
