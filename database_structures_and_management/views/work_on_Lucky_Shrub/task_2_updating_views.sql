/*
Task 2: Write a SQL statement that utilizes the ‘OrdersView’ virtual table to Update the base Orders table. In the UPDATE TABLE statement, change the cost to 200 where the order id equals 2. Once you have executed the query, select all data from the OrdersView table. The expected output result should be the same as the following screenshot (assuming that you have created and populated the table correctly).
*/
update OrdersView set Cost = 200 where
 OrderID = 2; select * from OrdersView;
