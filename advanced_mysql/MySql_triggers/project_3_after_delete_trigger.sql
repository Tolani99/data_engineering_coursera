/*
This trigger will be executed automatically after each successful deletion of a row from the "Orders" table. It will insert a new row into the "Audits" table, with the following values:

action_type: 'AFTER' (to indicate that the trigger was executed after the deletion)
message: a concatenated string that includes the OrderID, the time and date of deletion, and a message describing the action
action: 'DELETE' (the type of action that was performed on the "Orders" table)
You can customize the message and the values that are inserted into the "Audits" table to fit your specific needs.
*/
CREATE TRIGGER AfterDeleteOrder AFTER DELETE ON Orders
FOR EACH ROW
INSERT INTO Audits(action_type, message, action)
VALUES('AFTER', CONCAT('Order ', OLD.OrderID, ' was deleted at ', CURRENT_TIME(), ' on ', CURRENT_DATE()), 'DELETE');

