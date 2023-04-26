select * from employees where not exists(select * from Bookings where Bookings.EmployeeID = employees.EmployeeID and Department in('Legal', 'Finance'));
