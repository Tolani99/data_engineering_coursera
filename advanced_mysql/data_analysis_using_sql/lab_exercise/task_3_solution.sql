/*
Task 3 Solution
Lucky Shrub needs to analyze the sales performance of their Patio slates product in the year 2021. This product has a Product ID of P3. Help Lucky Shrub to analyze the performance of this product by developing a function called FindSoldQuantity that enables them to:

Input a ProductID and a year from which they can capture data

and display the total quantity of the product sold in the given year.
*/
CREATE FUNCTION FindSoldQuantity (product_id VARCHAR(10), YearInput INT) returns INT DETERMINISTIC RETURN (SELECT SUM(Quantity) FROM Orders WHERE ProductID = product_id AND YEAR (Date) = YearInput);

SELECT FindSoldQuantity ("P3", 2021);
/*
The given SQL query is composed of two parts:

A function definition that creates a new function called "FindSoldQuantity". This function takes two parameters: a product_id (which is a VARCHAR type) and a YearInput (which is an INT type). The function returns an INT value.
Here is the breakdown of the function definition:

sql
Copy code
CREATE FUNCTION FindSoldQuantity (product_id VARCHAR(10), YearInput INT) 
This line creates a new function called "FindSoldQuantity" that takes two input parameters: a product_id (which is a VARCHAR type) and a YearInput (which is an INT type).


returns INT 
This line specifies that the function returns an INT value.

DETERMINISTIC 
This line specifies that the function will always return the same result when given the same input parameters. This can help improve performance when the function is called multiple times with the same input parameters.

RETURN (SELECT SUM(Quantity) FROM Orders WHERE ProductID = product_id AND YEAR (Date) = YearInput);
This line specifies the logic for the function. It uses a SELECT statement to retrieve the sum of the Quantity column from the Orders table, where the ProductID matches the input product_id parameter and the year of the order matches the input YearInput parameter. The result of this SELECT statement is then returned as the output of the function.

A query that calls the FindSoldQuantity function to retrieve the total quantity sold for product "P3" in the year 2021.

SELECT FindSoldQuantity ("P3", 2021);
This line calls the FindSoldQuantity function with the input parameters "P3" and 2021. The function then returns the total quantity sold for product "P3" in the year 2021 as an INT value, which is displayed as the result of the query.

Overall, this SQL query creates a function that can be used to retrieve the total quantity sold for a given product and year, and then calls the function to retrieve the quantity sold for product "P3" in the year 2021.
*/
