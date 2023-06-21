/*
SELECT EmployeeID,HandlingCost 

FROM employee_orders  

WHERE HandlingCost > ALL(SELECT ROUND(OrderTotal/100 * 20) FROM orders);
*/
SELECT EmployeeID,HandlingCost  

FROM employee_orders  

WHERE HandlingCost > ALL(SELECT ROUND(OrderTotal/100 * 20) FROM orders) GROUP BY EmployeeID,HandlingCost;
