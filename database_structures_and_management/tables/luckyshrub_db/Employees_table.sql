create table Employees(EmployeeID int not null, FullName varchar(50), JobTitle varchar(20), Country varchar(50), LineManagerID int);
insert into Employees(EmployeeID, FullName, JobTitle, Country, LineManagerID) values(1, 'Seamus Hogan', 'Manager', 'Pinal Country', 3), (2, 'Thomas Eriksson', 'Assistant', 'Pinal Country', 1), (3, 'Simon Tolo', 'Head Chef', 'Gila County', 3), (4, 'Fancesca Soffia', 'Assistant', 'Cochise County', 1), (5, 'Emily Sierra', 'Accountant', 'Cochise County', 1), (6, 'Greta Galkina', 'Accountant', 'Cochise County', 3);