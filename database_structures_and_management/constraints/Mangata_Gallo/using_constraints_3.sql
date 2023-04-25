/*
Task 3: Create the Orders table with the following constraints.

OrderID: INT, NOT NULL and PRIMARY KEY

ClientID: INT, NOT NULL and FOREIGN KEY

ItemID: INT, NOT NULL and FOREIGN KEY

Quantity: INT, NOT NULL and maximum allowed items in each order 3 only

COST Decimal(6,2) and NOT NULL
*/
CREATE TABLE Orders(OrderID INT NOT NULL PRIMARY KEY, ClientID INT NOT NULL, ItemID INT NOT NULL, Quantity INT NOT NULL CHECK(Quantity <= 3), COST Decimal(
6,2) NOT NULL, FOREIGN KEY(ClientID) REFERENCES Clients(Cli
ntID), FOREIGN KEY(ItemID) REFERENCES Items(ItemID));
