/*
The SQL statement create index IdxReverseFullName on Clients(ReverseFullName); creates an index named IdxReverseFullName on the ReverseFullName column of the Clients table.

This index will improve the performance of queries that use the ReverseFullName column as a search or sort criterion. When an index is created on a column, the database management system creates a separate data structure that contains a sorted list of the values in that column, along with pointers to the corresponding rows in the table. This allows the system to quickly locate the rows that match a given search condition or sort order without having to scan the entire table.

Note that creating an index can improve performance for some types of queries, but it can also slow down data modification operations such as inserts, updates, and deletes. This is because the index must be updated along with the table data whenever a modification is made. Therefore, it's important to carefully consider the trade-offs between query performance and data modification performance when deciding whether to create an index.
*/
alter table ORDERS add column ExpectedDeliveryDate DATE;
select * from Clients where FullName like '%Ito';
alter table Clients add column ReverseFullName varchar(200);
update Clients set ReverseFullName = concat(substring_index(FullName, ' ', -1), ' ', substring_index(FullName, ' ', 1));
create index IdxReverseFullName on Clients(ReverseFullName);
