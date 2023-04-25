-- Demonstrating partial copy
create table ClientsTest2 select FullName, ContactNumber from ClientsTest where Location = 'Pinal County';


