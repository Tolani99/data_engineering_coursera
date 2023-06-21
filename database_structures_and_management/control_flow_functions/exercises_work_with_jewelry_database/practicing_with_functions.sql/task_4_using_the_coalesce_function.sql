/*
Task 4: Generate data required for a report with details of all orders that have not yet been delivered. The DeliveryDate column has a NULL value for orders not yet delivered. It would help if you showed a value of 'NOT DELIVERED' instead of showing NULL for orders that are not yet delivered. Use the COALESCE function to do this.
*/
select OrderID, ItemID, Quantity, Cost, OrderDate, coalesce(DeliveryDate, 'Not Delivered'), OrderStatus as 'Delivery Date'from mg_orders;
