/*
The first command "select * from Clients;" selects all data from the "Clients" table.

The second command "select ContactNumber from Clients where FullName = 'Jane Delgado';" selects the "ContactNumber" column from the "Clients" table where the "FullName" column is equal to 'Jane Delgado'.

The third command "create index IdxFullName on Clients(FullName);" creates an index on the "FullName" column in the "Clients" table. This index will improve the performance of queries that use the "FullName" column as a filter, such as the query in the second command.

By creating an index on the "FullName" column, the database can quickly locate the rows that match the filter condition, instead of scanning the entire table. This can significantly reduce the time it takes to execute queries that use the "FullName" column as a filter.

It is important to note that creating an index can have an impact on the performance of insert, update, and delete operations on the table, as the index needs to be updated to reflect any changes to the data. Therefore, it is important to carefully consider the trade-offs between query performance and data modification performance when deciding whether to create an index.
*/
select * from Clients;
explain select ContactNumber from Clients where FullName = 'Jane Delgado';
create index IdxFullName on Clients(FullName);
