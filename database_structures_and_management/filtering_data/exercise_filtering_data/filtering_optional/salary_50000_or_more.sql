/*
Task 1: Use the AND operator to find employees who earn an annual salary of $50,000 or more attached to the Marketing department.
*/
SELECT * FROM employees WHERE AnnualSalary >= 50000 AND Department = 'Marketing';
