-- Using the in parameter in stored procedure
-- IF nothing is stated explicitly sql assumes the use of in
create procedure cost_at_orderID(in input int) select Cost from Orders where OrderID = input;
