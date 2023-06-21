/*
Task 1: Write a SQL REPLACE statement that inserts two new orders with the following details:

Order 9 data:

OrderID = 9,

ClientID = "Cl1",

ProductID = "P1",

Quantity = 10,

Cost = 5000


Order 10 data:

OrderID = 10,

ClientID = "Cl2",

ProductID = "P2",

Quantity = 5,

Cost = 100
*/
REPLACE INTO Orders(OrderID, ClientID, ProductID, Quantity, Cost) VALUES(9, 'Cl1', 'P1', 10, 5000);
REPLACE INTO Orders(OrderID, ClientID, ProductID, Quantity, Cost) VALUES(10, 'Cl2', 'P2', 5, 100);
