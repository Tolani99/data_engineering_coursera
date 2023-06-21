/*
Task 1: Create the Clients table with the following columns and constraints.

ClientID: INT, NOT NULL and PRIMARY KEY

FullName: VARCHAR(100) NOT NULL

PhoneNumber: INT, NOT NULL and UNIQUE
*/
create table Clients(ClientID int not null primary key, FullName varchar(100) not null, PhoneNumber int not null unique);
