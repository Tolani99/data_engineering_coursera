/*
Task 2

Write a SQL statement to apply the following constraints to the Staff table:

StaffID: INT NOT NULL and PRIMARY KEY

FullName: VARCHAR(100) and NOT NULL

PhoneNumber: INT NOT NULL

The expected output result should be the same as the following screenshot (assuming that you have created and populated the tables correctly.)
*/
alter table Staff modify StaffID int not null primary key, modify FullName varchar(100) not null, modify PhoneNumber int not null;
