/*
Task1: Use the ANY operator to identify all employees with the Order Status status 'Completed'
*/
SELECT EmployeeId, EmployeeName 

FROM employees 

WHERE EmployeeID = ANY (SELECT EmployeeID FROM employee_orders WHERE Status='Completed');
