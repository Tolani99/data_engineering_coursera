/*
The IF EXISTS keyword is optional and it instructs the server to not return an error if the specified event does not exist.

Here's an example:
*/
DROP EVENT IF EXISTS DailyRestock;
/*
This will drop the "DailyRestock" event if it exists, without raising an error if it does not.
*/
