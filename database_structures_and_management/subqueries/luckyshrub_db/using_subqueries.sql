select * from employees where AnnualSalary > (Select AnnualSalary from employees where EmployeeName = 'Rick Griffin');
