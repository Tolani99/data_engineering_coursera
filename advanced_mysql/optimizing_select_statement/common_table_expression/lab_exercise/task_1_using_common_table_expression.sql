/*
Task 1

Lucky Shrub need to find out how many orders were placed by clients with the following Client IDs in 2022; Cl1, Cl2 and Cl3. They have created the following query to extract this information.
*/
with No_of_orders_cl1 as (SELEC
T CONCAT("Cl1: ", COUNT(OrderID), " orders") AS "Total number of
 orders" FROM Orders WHERE YEAR(Date) = 2022 AND ClientID = "Cl1
"), No_of_orders_cl2 as (SELECT CONCAT("Cl2: ", COUNT(OrderID),
" orders") FROM Orders WHERE YEAR(Date) = 2022 AND ClientID = "C
l2"), No_of_orders_cl3 as (SELECT CONCAT("Cl3: ", COUNT(OrderID)
, " orders") FROM Orders WHERE YEAR(Date) = 2022 AND ClientID =
"Cl3") select * from No_of_orders_cl1 union select * from No_of_
orders_cl2 union select * from No_of_orders_cl3;
/*
This is a SQL query that retrieves the number of orders made by each client in the year 2022, and presents the results in a single table using UNION.

The query uses common table expressions (CTEs) to compute the number of orders for each client. Specifically, it defines three CTEs, each of which computes the number of orders made by a single client using a COUNT aggregation function and a WHERE clause to filter by year and client ID.

The results of each CTE are then combined using the UNION operator to produce a single table with three rows, where each row corresponds to one client and shows the total number of orders made by that client in the year 2022.

Here is a breakdown of the query:

The first CTE is named "No_of_orders_cl1". It computes the number of orders made by client "Cl1" in the year 2022, and uses CONCAT to format the result as a string that includes the client name and the total number of orders.

The second CTE is named "No_of_orders_cl2". It computes the number of orders made by client "Cl2" in the year 2022, and also formats the result as a string.

The third CTE is named "No_of_orders_cl3". It computes the number of orders made by client "Cl3" in the year 2022, and formats the result as a string.

The final SELECT statement combines the results of the three CTEs using UNION. This produces a single table with three rows, where each row shows the total number of orders made by a single client in the year 2022.

Overall, this query provides a concise and efficient way to compute the number of orders made by each client in a given year, and presents the results in a clear and easy-to-read format.
*/
