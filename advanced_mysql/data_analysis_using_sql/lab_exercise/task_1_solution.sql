/*
Lucky Shrub need to find out how many sycamore trees they’ve sold over the past few years. Sycamore trees have been assigned an ID of P4 in the Products table in the database. Create a query that returns the total quantity of all products with the ID of P4 sold in the years 2020, 2021 and 2022. The expected output of the query must resemble the following screenshot:
*/
SELECT CONCAT (SUM(Quantity), "(2020)") AS "P4 product: Quantity sold" FROM Orders WHERE YEAR (Date) = 2020 AND ProductID = "P4"

UNION

SELECT CONCAT (SUM(Quantity), "(2021)") FROM Orders WHERE YEAR (Date) = 2021 AND ProductID = "P4"

UNION

SELECT CONCAT (SUM(Quantity), "(2022)") FROM Orders WHERE YEAR (Date) = 2022 AND ProductID = "P4";

/*
The given SQL query will produce three separate rows in the result set, with each row representing the total quantity of Product "P4" sold in the year 2020, 2021, and 2022 respectively.

Here is the breakdown of the SQL query:

SELECT CONCAT (SUM(Quantity), "(2020)") AS "P4 product: Quantity sold" FROM Orders WHERE YEAR (Date) = 2020 AND ProductID = "P4"
This line will return the total quantity of Product "P4" sold in the year 2020, and the result will be concatenated with the string "(2020)" to indicate the year. The result column will be named "P4 product: Quantity sold".

UNION
This keyword is used to combine the results of multiple SELECT statements into a single result set.

SELECT CONCAT (SUM(Quantity), "(2021)") FROM Orders WHERE YEAR (Date) = 2021 AND ProductID = "P4"
This line will return the total quantity of Product "P4" sold in the year 2021, and the result will be concatenated with the string "(2021)" to indicate the year.

UNION
This keyword is used again to combine the results of multiple SELECT statements into a single result set.

SELECT CONCAT (SUM(Quantity), "(2022)") FROM Orders WHERE YEAR (Date) = 2022 AND ProductID = "P4";
This line will return the total quantity of Product "P4" sold in the year 2022, and the result will be concatenated with the string "(2022)" to indicate the year.

The final result set will have three rows, each containing the total quantity of Product "P4" sold in a specific year, with the year indicated in the column name. The column name for each row will be "P4 product: Quantity sold".
*/
