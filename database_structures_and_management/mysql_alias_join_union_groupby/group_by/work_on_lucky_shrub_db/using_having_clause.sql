/*
Task 4 solution: Use the HAVING clause to filter the grouped data in the subquery that you wrote in task 3 to filter the 20% OrderTotal values to only retrieve values that are more than $100.
*/
SELECT EmployeeID,HandlingCost 

FROM employee_orders 

WHERE HandlingCost > ALL(SELECT ROUND(OrderTotal/100 * 20) AS twentyPercent FROM orders  GROUP BY OrderTotal

HAVING twentyPercent > 100)  GROUP BY EmployeeID,HandlingCost;
