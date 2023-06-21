CREATE PROCEDURE GetItalianCustomers() SELECT * FROM Customers WHERE Country = “Italy”;
CALL GetItalianCustomers();
