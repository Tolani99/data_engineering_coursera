select * from employees where AnnualSalary >= ANY(select AnnualSalary from employees where Department in('Recruitment', 'Customer Service', 'Marketing'));
