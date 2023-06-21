/*

You are tasked to optimize this query by recreating it as a common table expression (CTE).
*/
WITH

P2_Sales_2020 AS (SELECT CONCAT(SUM(Cost), " (2020)") AS "Total sum of P2 Product" FROM Orders WHERE YEAR(Date) = 2020 AND ProductID= "P2"),

P2_Sales_2021 AS (SELECT CONCAT(SUM(Cost), " (2021)") AS "Total sum of P2 Product" FROM Orders WHERE YEAR(Date) = 2021 AND ProductID= "P2"),

P2_Sales_2022 AS (SELECT CONCAT(SUM(Cost), " (2022)") AS "Total sum of P2 Product" FROM Orders WHERE YEAR(Date) = 2022 AND ProductID= "P2")

SELECT * FROM P2_Sales_2020

UNION

SELECT * FROM P2_Sales_2021

UNION

SELECT * FROM P2_Sales_2022;
/*
The SQL query you provided also retrieves the total cost of product "P2" for each year between 2020 and 2022, but it uses a different approach to combine the results. Instead of using a single SELECT statement with UNIONs, it uses Common Table Expressions (CTEs) to define three temporary tables, one for each year, and then uses UNIONs to combine the results of the three CTEs.

The first CTE, "P2_Sales_2020", selects the sum of the "Cost" column from the "Orders" table where the "ProductID" is "P2" and the year is 2020, and concatenates the result with the string literal " (2020)" as the column alias "Total sum of P2 Product". Similarly, the second CTE, "P2_Sales_2021", selects the sum of the "Cost" column where the year is 2021, and the third CTE, "P2_Sales_2022", selects the sum of the "Cost" column where the year is 2022.

The final SELECT statement combines the results of the three CTEs using UNIONs. Since the three CTEs have the same column alias, the resulting UNIONed table will have a single column with the alias "Total sum of P2 Product". The result set will have three rows, each containing the total sum of product "P2" for a different year (2020, 2021, or 2022), with a corresponding string indicating the year in parentheses.
*/
