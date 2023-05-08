alter table ORDERS add column ExpectedDeliveryDate DATE;
select * from Clients where FullName like '%Ito';
alter table Clients add column ReverseFullName varchar(200);
update Clients set ReverseFullName = concat(substring_index(FullName, ' ', -1), ' ', substring_index(FullName, ' ', 1));
create index IdxReverseFullName on Clients(ReverseFullName);
