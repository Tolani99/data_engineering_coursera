/*
Task 2: Create the 'ContractInfo' table with the following key and domain constraints:

Contract ID should be INT, NOT NULL and PRIMARY KEY

StaffID should be INT, NOT NULL. 

Salary should be DECIMAL (7,2), NOT NULL.

Location should be VARCHAR (50) NOT NULL with DEFAULT = "Texas". 

StaffType should be VARCHAR (20) NOT NULL and should accept a "Junior" or a "Senior" value.
*/
create table ContractInfo(ContractID int not null primary key, StaffID int not null, Salary decimal(7,2) not null, Location varchar(50) not null default "Texas", StaffType varchar(20) not null check(StaffType = 'Junior' or 'Senior'));
