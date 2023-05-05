/*
Task 3:

Create a DELETE trigger called NotifyProductDelete. This trigger must insert a notification in the Notifications table for the sales department after a product has been deleted from the Products table.

The notification message should be in the following format: The product with a ProductID  + ProductID + was deleted
*/
CREATE TRIGGER NotifyProductDelete 
AFTER DELETE ON Products
FOR EACH ROW
BEGIN
    INSERT INTO Notifications (Message)
    VALUES (CONCAT('The product with a ProductID ', OLD.ProductID, ' was deleted'));
END;
/*
This trigger is created to execute after a row has been deleted from the Products table. It inserts a notification message into the Notifications table, which includes the ProductID of the deleted product. The OLD keyword is used to refer to the row that was deleted.
*/
