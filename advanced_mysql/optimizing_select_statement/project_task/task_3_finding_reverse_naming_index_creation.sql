update Employees set ReverseFullName = concat(substring_index(FullName, ' ', -1), ' ', substring_index(FullName, ' ', 1));
create index IdxReverseFullName on Employees(ReverseFullName);
-- select * from Employees where FullName like '%Tolo';

