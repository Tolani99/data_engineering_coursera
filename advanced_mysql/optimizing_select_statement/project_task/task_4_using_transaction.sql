start transaction;
insert into Orders(OrderID, ClientID ProductID, Quantity, Cost, Date) values(30, 'C11', 'P1', 10, 500, '2022-09-30');
update Products set NumberOfItems = (NumberOfItems - 10) where ProductID = 'P1';
select Orders.OrderID, Orders.ClientID, Orders.Quantity, Products.ProductID, Products.NumberOfItems from Orders inner join Products on (Orders.ProductID = Products.ProductID) where Orders.OrderID = 30;
/*
You observe a mistake, it's 'C11' not 'Cl1'
So you roll back(to the initial status)
by simply typing rollback
*/
rollback
/*
Then repeat the process, while correct the 'C11' to 'Cl1'
*/
