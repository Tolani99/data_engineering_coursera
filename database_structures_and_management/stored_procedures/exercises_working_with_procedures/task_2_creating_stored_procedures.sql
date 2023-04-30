/*
Task 2: Write a SQL statement that creates a stored procedure called “GetListOfOrdersInRange”. The procedure must contain two parameters that determine the range of retrieved data based on the user input of two cost values “MinimumValue” and “MaximumValue”.
*/
create procedure GetListOrdersInRange(MinimumValue int, MaximumValue int) select * from Orders where Cost between MinimumValue and MaximumValue;

