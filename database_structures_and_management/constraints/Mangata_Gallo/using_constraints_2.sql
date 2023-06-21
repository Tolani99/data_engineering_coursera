/*
ask 2: Create the Items table with the following attributes and constraints:

ItemID: INT, NOT NULL and PRIMARY KEY

ItemName: VARCHAR(100) and NOT NULL

Price: Decimal(5,2) and NOT NULL
*/
create table Items(ItemID int not null primary key, ItemName varchar(100) not null, Price Decimal(5,2) not null);
