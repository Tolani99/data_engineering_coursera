select * from Clients;
explain select ContactNumber from Clients where FullName = 'Jane Delgado';
create index IdxFullName on Clients(FullName);
