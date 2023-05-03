create function FindCost(Id_no int) returns decimal(5, 2) deterministic return (select Cost from Orders where OrderID = Id_no);
select FindCost(5);
