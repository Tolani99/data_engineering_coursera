/*
The first statement adds a new column ExpectedDeliveryDate of type DATE to the ORDERS table. This will allow you to store the expected delivery date of each order.

The second statement selects all rows from the Clients table where the FullName column ends with the string "Ito". This will retrieve all clients whose full name ends with "Ito".

The third statement adds a new column ReverseFullName of type varchar(200) to the Clients table. This column will be used to store the full name of each client in reverse order (i.e. last name first, then first name).

The final statement updates the ReverseFullName column for each row in the Clients table by concatenating the last name and first name in reverse order. The concat() function is used to combine the last name and first name into a single string, and the substring_index() function is used to extract the last name and first name from the FullName column. The Update statement will modify the existing rows in the Clients table by populating the newly added ReverseFullName column for each row.
*/
alter table ORDERS add column ExpectedDeliveryDate DATE;
select * from Clients where FullName like '%Ito';
alter table Clients add column ReverseFullName varchar(200);
update Clients set ReverseFullName = concat(substring_index(FullName, ' ', -1), ' ', substring_index(FullName, ' ', 1));
