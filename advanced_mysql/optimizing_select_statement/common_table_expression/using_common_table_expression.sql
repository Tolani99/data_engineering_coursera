start transaction;

insert into Orders(OrderID, ClientID, ProductID, Quantity, Cost, Date) values(30, 'Cl1', 'P1', 10, 500, '2022-09-30');

select Orders.OrderID, Orders.ClientID, Orders.Quantity, Products.ProductID, Products.NumberOfItems from Orders inner join Products on (Orders.ProductID = Products.ProductID) where Orders.OrderID = 30;

/*
select Concat(AVG(Cost), " (2020)") AS "Average Sale" from Orders where year(Date) = 2020 union select Concat(AVG(Cost), " (2021)") from Orders where YEAR(Date) = 2021 union select Concat(AVG(Cost), " (2022)") from Orders w
here YEAR(Date) = 2022;
*/
with 
Average_Sales_2020 as (select concat(avg(Cost), " (2020)") as "Average Sale" from Orders
where year(Date) = 2020), 
Average_Sales_2021 as (select concat(avg(Cost), " (2021)") from Orders
where year(Date) = 2021),  
Average_Sales_2022 as (select concat(avg(Cost), " (2022)") from Orders 
where year(Date) = 2022) 
select * from Average_Sales_2020 
union 
select * from Average_Sales_2021 
union 
select * from Average_Sales_2022;
