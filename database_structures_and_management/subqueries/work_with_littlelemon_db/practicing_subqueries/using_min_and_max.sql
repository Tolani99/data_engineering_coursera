/*
Task 1: Find the minimum and the maximum average prices at which the customers can purchase food and drinks.

Hint: In this task, you must write subqueries using the FROM clause. Your subquery would find the average prices of menu items by their type. The subquery result will be the input for the outer query to find the minimum and maximum average prices.
*/
SELECT round(MIN(avg_price), 2) AS min_avg_price, round(MAX(avg_price), 2) AS max_avg_price FROM (SELECT Type, AVG(Price) AS avg_price FROM MenuItems GROUP BY Type) AS subquery;
