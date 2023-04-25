/*
Task 2: Apply the NOT NULL constraint to the quantity and cost columns
*/
alter table FoodOrders modify Quantity int not null, modify Cost int not null;

