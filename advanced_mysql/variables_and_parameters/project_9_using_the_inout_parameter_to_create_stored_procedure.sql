create procedure SquareAnumber(inout Numb
er int) set Number = Number * Number;
set @x_number = 23423;
call SquareAnumber(@x_number);
select @x_number;
