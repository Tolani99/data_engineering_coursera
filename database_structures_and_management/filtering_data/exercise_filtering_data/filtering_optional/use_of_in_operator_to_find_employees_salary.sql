/*
Task 3: Use the IN operator to find Marketing, Finance, and Legal employees whose annual salary is below $50,000.
*/
SELECT * FROM employees WHERE Department IN('Marketing', 'Finance', 'Legal') AND AnnualSalary <= 50000;
