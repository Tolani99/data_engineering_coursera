/*
Task 3

The Lucky Shrub system logs the ClientID of each client, and the ProductID of the products they order, in a JSON Properties column in the Activity table.

Tips:

The product name, buy price and sell price data must be extracted from the Products table.

Use the following code to access the property value with double quotations from the JSON datatype: ->'$.PropertyName

Use the following code to access the property value without double quotations from JSON datatype: ->>'$. PropertyName

*/
SELECT Activity.Properties ->>'$.ProductID' 

AS ProductID, Products.ProductName, Products.BuyPrice, Products.SellPrice 

FROM Products INNER JOIN Activity 

ON Products.ProductID = Activity.Properties ->>'$.ProductID' 

WHERE Activity.Properties ->>'$.Order' = "True";
/*
This is a SQL query that joins two tables, "Products" and "Activity", based on the "ProductID" column, and retrieves data from them to obtain the product details and prices for all products that have been ordered.

The "Activity" table contains a JSON field named "Properties" which has a JSON object with key-value pairs that contain various properties related to the activity. The query uses the "->>" operator to extract the value of the "ProductID" key from this JSON object.

The "INNER JOIN" clause is used to join the "Products" table with the "Activity" table based on the "ProductID" column. This ensures that only products that have been ordered will be included in the result set.

The SELECT statement then retrieves the "ProductID" from the "Activity" table, and uses it to retrieve the corresponding product details from the "Products" table. Specifically, it retrieves the "ProductName", "BuyPrice", and "SellPrice" columns from the "Products" table.

Finally, the WHERE clause filters the results based on the value of the "Order" key in the "Properties" field of the "Activity" table. Specifically, it includes only those products that have been ordered by checking if the value of the "Order" key is equal to "True".
*/
