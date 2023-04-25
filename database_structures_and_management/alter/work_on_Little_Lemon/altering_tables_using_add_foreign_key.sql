/*
Task 3: Create two new columns, OrderDate with a DATE datatype and CustomerID with an INT datatype. Declare both must as NOT NULL. Declare the CustomerID as a foreign key in the FoodOrders table to reference the CustomerID column existing in the Customers table.
*/
alter table FoodOrders add(OrderDate date not null, CustomerID int not null);
alter table FoodOrders add foreign key(CustomerID) references Customer(CustomerID);

