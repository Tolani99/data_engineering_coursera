/*
Task 5: Create constraints

Create a new table called "DeliveryAddress" in the Little Lemon database with the following columns and constraints:

ID: INT PRIMARY KEY

Address: VARCHAR(255) NOT NULL

Type: NOT NULL DEFAULT "Private"

CustomerID: INT NOT NULL FOREIGN KEY referencing CustomerID in the Customers table
*/
create table DeliveryAddress(ID int primary key, Address varchar(25) not null, Type varchar(100) not null
default 'Private', CustomerID int not null, foreign key(CustomerI
D) references Customers(CustomerID));
