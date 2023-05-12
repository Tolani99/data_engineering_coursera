/*
Task 6 Solution
Lucky Shrub want to know more about the activities of the clients who use their online store. The system logs the ClientID and the ProductID information for each activity in a JSON Properties column inside the Activity table. This occurs while clients browse through Lucky Shrub products online. The following screenshot shows the Activity table.

Utilize the Properties data to output the following information:

The full name and contact number of each client from the Clients table.

The ProductID for all clients who performed activities.
Use the following code to access the property value with double quotations from the JSON datatype:

->'$.PropertyName

Use the following code to access the property value without double quotations from the JSON datatype:

 ->>'$. PropertyName

The output result of this query is shown in the screenshot below. 
*/
SELECT Activity.Properties ->>'$.ClientID'

AS ClientID, Activity.Properties ->>'$.ProductID'

AS ProductID, Clients.FullName, Clients.ContactNumber

FROM Clients RIGHT JOIN Activity

ON Clients.ClientID = Activity.Properties ->>'$.ClientID';
/*
The SQL query you provided performs a right join between the "Clients" table and the "Activity" table using the "ClientID" column as the join condition.

The SELECT statement retrieves four columns: "ClientID", "ProductID", "FullName", and "ContactNumber". The first two columns are extracted from the "Properties" JSON field in the "Activity" table using the "->>" operator and the JSONPath expression "$.ClientID" and "$.ProductID", respectively. The last two columns are selected from the "Clients" table.

Since this is a right join, all the rows from the "Activity" table will be included in the result set, along with matching rows from the "Clients" table. If a row from the "Activity" table does not have a matching row in the "Clients" table, the columns from the "Clients" table will contain NULL values.

Overall, this query returns a result set that includes the "ClientID" and "ProductID" from the "Activity" table, along with the "FullName" and "ContactNumber" of the corresponding client from the "Clients" table (if available).
*/
