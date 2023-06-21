/*
Task 1:
Lucky Shrub need to find out what their average sale price, or cost was for a product in 2022.

You can help them with this task by creating a FindAverageCost() function that returns the average sale price value of all products in a specific year. This should be based on the user input.
*/
create function FindAverageCost(YearInput int) returns decimal(5, 2) deterministic return (select AVG(Cost) from Orders where Year(Date) = YearInput);

/*
The SQL query defines a function named "FindAverageCost" that takes an integer input parameter "YearInput". The function returns a decimal number with precision up to two decimal places.

The body of the function includes a SQL subquery that selects the average cost from the "Orders" table, where the year of the order's date matches the "YearInput" parameter. The "AVG" function calculates the average cost of all orders that meet the condition.

Note that the "deterministic" keyword indicates that the function will return the same result for the same input value, which means the function is deterministic.

Overall, this function can be used to find the average cost of orders placed in a specific year. To use this function, you would need to call it with an integer input representing the desired year, like this:

SELECT FindAverageCost(2022);
This would return the average cost of all orders placed in the year 2022, assuming there are orders in the "Orders" table that meet that criteria.
*/
