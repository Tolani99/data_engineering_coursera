/*
Task 1: Write a SQL statement to create the OrdersView Virtual table based on the Orders table. The table must include the following columns: Order ID, Quantity and Cost. Once you have executed the query, select all data from the OrdersView table. The expected output result should be the same as the following screenshot (assuming that you have created and populated the table correctly).
*/
create view OrdersView as select OrderID, Quantity, Cost from Orders; select * from OrdersView;
