/*
The EXPLAIN statement is used to obtain information about how MySQL executes a SELECT query. However, in this particular case, the query is simple and does not require any complex execution plan.

Assuming that the Clients table has an index on the FullName column, the execution plan for the query SELECT ContactNumber FROM Clients WHERE FullName='Jane Delgado'; should look like:

Using index: IdxFullName (an index on the FullName column)
Filtering rows: FullName='Jane Delgado'
Retrieving the ContactNumber column from matching rows in the Clients table.
The output of the EXPLAIN statement for this query should confirm that the index IdxFullName is being used for the query and there are no full table scans being performed.

In summary, the EXPLAIN statement is useful for analyzing complex queries involving large tables, multiple joins, or subqueries to optimize query performance.
*/
EXPLAIN SELECT ContactNumber 

FROM Clients 

WHERE FullName='Jane Delgado';
