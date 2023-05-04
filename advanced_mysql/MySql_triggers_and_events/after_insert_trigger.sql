/*
The trigger you have provided will create an "AFTER INSERT" trigger on the "Orders" table that logs information about the insertion into an "Audits" table. Here is the corrected version of the trigger:
*/
CREATE TRIGGER LogNewOrderInsert AFTER INSERT ON Orders 
FOR EACH ROW 
INSERT INTO Audits(action_type, message, action)
VALUES('AFTER', 'A new order was inserted', 'INSERT');
/*
This trigger will be executed automatically after each successful insertion of a new row into the "Orders" table. It will insert a new row into the "Audits" table, with the following values:

action_type: 'AFTER' (to indicate that the trigger was executed after the insertion)
message: 'A new order was inserted' (a message to describe the action that triggered the trigger)
action: 'INSERT' (the type of action that was performed on the "Orders" table)
You can customize the message and the values that are inserted into the "Audits" table to fit your specific needs.
*/
