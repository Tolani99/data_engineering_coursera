create view Top3Products as select Products.Item, Orders.Quantity, Orders.Cost from Orders inner join Products on Orders.ProductID = Products.ProductID order by Orders.Cost Desc limit 3;
