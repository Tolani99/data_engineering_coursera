/*
Task 2: Use the ALL operator to identify the IDs of employees who earned a handling cost of "more than 20% of the order value" from all orders they have handled.
*/
SELECT EmployeeID,HandlingCost 

FROM employee_orders  

WHERE HandlingCost > ALL(SELECT ROUND(OrderTotal/100 * 20) FROM orders); 
