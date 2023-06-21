/*
Task 3: Create a foreign key that links the Staff table with the ContractInfo table. In this example, you need to apply the referential integrity rule as follows:

Link each member of staff in the Staff table to a specific contract in the Contract Info table.

Each staff ID existing in the 'Contract Info' table is expected to exist as well in the Staff table.

The staff ID in the 'Contract Info' table should be defined as a foreign key to reference the Staff ID in the Staff table.
*/
create table ContractInfo(ContractID int not null primary key, StaffID int not null, Salary decimal(7,2) not null, Location varchar(50) not null default "Texas", StaffType varchar(20) not null check(StaffType = 'Junior' or 'Senior'), foreign key((StaffID) references Staff(StaffID));
