select * from employees where AnnualSalary <= all(select AnnualSalary from employees where Department
in('Recruitment', 'Customer Service', 'Marketing'));
