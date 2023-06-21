select e1.FullName as "Line Manager", e2.FullName as "Employee" from Employees as e1 inner join Employees as e2 on e1.EmployeeID = e2.LineManagerID;
