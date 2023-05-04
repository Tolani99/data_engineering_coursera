/*
DROP TRIGGER IF EXISTS trigger_name is a SQL statement that drops a trigger from a database table, if it exists.

The IF EXISTS clause checks if the trigger exists before attempting to drop it. If the trigger does not exist, the statement will not throw an error and the execution will continue. This is useful to avoid errors when trying to drop a trigger that doesn't exist.

The trigger_name parameter specifies the name of the trigger that should be dropped.

Here's an example usage of DROP TRIGGER IF EXISTS:
*/
DROP TRIGGER IF EXISTS LogNewOrderInsert;
/*
This statement will drop the trigger named "LogNewOrderInsert" if it exists. If it does not exist, the statement will not cause an error and execution will continue.
*/
