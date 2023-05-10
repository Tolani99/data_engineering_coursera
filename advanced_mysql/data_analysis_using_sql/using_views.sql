/*
This SQL query creates a view called "TopProducts" that selects the top 5 products based on their cost in descending order, along with their name and quantity from the "Orders" and "Products" tables. Here is the SQL syntax to create the view:
*/
create view TopProducts as select Products.ProductName, Orders.Quantity, Orders.Cost from Orders inner join Products on Orders.ProductID = Products.ProductID order by Orders.Cost desc limit 5;
/*
Once this view is created, it can be used in other SQL queries as if it were a table. For example, if you wanted to select all the data from the "TopProducts" view, you could simply use the following SQL query:
SELECT * FROM TopProducts;
*/
