/*
Task 1:  Create the Staff table with the following PRIMARY KEY and NOT NULL constraints:

Staff ID should be INT, NOT NULL and PRIMARY KEY

PhoneNumber should be INT, NOT NULL and UNIQUE 

FullName: VARCHAR(100) NOT NULL
*/
create table Staff(StaffID int not null primary key, PhoneNumber int not null unique, FullName varchar(100) not null);

