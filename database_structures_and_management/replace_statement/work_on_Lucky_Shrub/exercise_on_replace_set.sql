/*
Task 2: Lucky Shrub have noticed that the cost of order number 9 is $5000. This is a mistake. The order must cost $500. You must help them to change it to $500 by writing a relevant REPLACE statement. 

Once you have executed the SQL statement, select all available data from the Orders table. The expected output result should be the same as the following screenshot (assuming that you have created and populated the tables correctly.)
*/
REPLACE INTO Orders SET OrderID = 9, ClientID = 'Cl1', ProductID = 'P1', Quantity = 10, Cost = 500.00;
