/**
Task 1:

Create a SQL function that prints the cost value of a specific order based on the user input of the OrderID. The expected output result should be the same as the result in the screenshot below when you call the function with an OrderID of 5.
**/

create function FindCost(Id_no int) returns decimal(5, 2) deterministic return (select Cost from Orders where OrderID = Id_no);
select FindCost(5);
