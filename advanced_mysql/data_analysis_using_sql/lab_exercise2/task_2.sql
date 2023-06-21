/*
Task 2:
Lucky Shrub need to evaluate the sales patterns for bags of artificial grass over the last three years. Help them out using the following steps:

Step 1: Create the EvaluateProduct stored procedure that outputs the total number of items sold during the last three years for the P1 Product ID. Input the ProductID when invoking the procedure. 

Step 2: Call the procedure. 

Step 3: Output the values into outside variables.
*/
DELIMITER // 

CREATE PROCEDURE EvaluateProduct(IN product_id VARCHAR(10), OUT SoldItemsIn2020 INT, OUT SoldItemsIn2021 INT, OUT SoldItemsIn2022 INT)

BEGIN

SELECT SUM(Quantity) INTO SoldItemsIn2020 FROM Orders WHERE ProductID=product_id AND YEAR(Date)=2020; 

SELECT SUM(Quantity) INTO SoldItemsIn2021 FROM Orders WHERE ProductID=product_id AND YEAR(Date)=2021;

SELECT SUM(Quantity) INTO SoldItemsIn2022 FROM Orders WHERE ProductID=product_id AND YEAR(Date)=2022; 

END //

DELIMITER ;

-- CALL EvaluateProduct('P1', @sold_items_2020, @sold_items_2021, @sold_items_2022);
-- SELECT @sold_items_2020, @sold_items_2021, @sold_items_2022;
/*
The SQL code you provided creates a stored procedure named "EvaluateProduct" that takes a single input parameter "product_id" and has three output parameters: "SoldItemsIn2020", "SoldItemsIn2021", and "SoldItemsIn2022".

The body of the stored procedure includes three SQL queries that select the sum of the "Quantity" column from the "Orders" table for a given product and year, and store the results in the respective output parameters. The "WHERE" clause filters the orders by the specified product ID and year.

Note that the "DELIMITER" keyword is used to change the delimiter used by MySQL from ";" to "//". This allows you to include multiple statements in the body of the stored procedure. After the stored procedure is defined, the delimiter is changed back to ";" using another "DELIMITER" statement.

To call this stored procedure, you can use the following SQL statement:

CALL EvaluateProduct('your_product_id_here', @sold_2020, @sold_2021, @sold_2022);
This will execute the stored procedure with the specified "product_id" parameter value and store the results in the output parameters "@sold_2020", "@sold_2021", and "@sold_2022". You can then use these output parameters in subsequent SQL statements or retrieve their values in your application code.

Note that the "@" symbol is used to indicate a user-defined variable in MySQL. In this case, we are defining three variables to hold the output parameters of the stored procedure.
*/
