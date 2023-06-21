/*
Task 3 Solution
Lucky Shrub need to automate the orders process in their database. The database must insert a new record of data in response to the insertion of a new order in the Orders table. This new record of data must contain a new ID and the current date and time.

You can help Lucky Shrub by creating a trigger called UpdateAudit. This trigger must be invoked automatically AFTER a new order is inserted into the Orders table.

Remember: The AuditID is an auto increment key. Therefore, you don't need to insert it manually.
*/
CREATE TRIGGER UpdateAudit AFTER INSERT

ON Orders

FOR EACH ROW

INSERT INTO Audit (OrderDateTime)

VALUES (Current_timestamp);
