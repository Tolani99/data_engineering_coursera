create procedure GetLowestCost(out LowestCost decimal(6, 2)) select min(Cost) into LowestCost from Orders;
call GetLowestCost(@order_lowest_cost);
select @order_lowest_cost;
