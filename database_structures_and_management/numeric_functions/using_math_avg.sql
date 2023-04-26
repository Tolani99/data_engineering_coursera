/*
To find the average of the grouped client ID's
*/
select ClientID, AVG(Cost) from Orders group by ClientID;
