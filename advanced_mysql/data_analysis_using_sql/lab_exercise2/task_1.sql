/*
Task 1:
Lucky Shrub need to find out what their average sale price, or cost was for a product in 2022.

You can help them with this task by creating a FindAverageCost() function that returns the average sale price value of all products in a specific year. This should be based on the user input.
*/
create function FindAverageCost(YearInput int) returns decimal(5, 2) deterministic return (select AVG(Cost) from Orders where Year(Date) = YearInput);
