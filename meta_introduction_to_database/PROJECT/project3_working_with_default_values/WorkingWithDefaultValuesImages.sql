/*
Mr. Carl Merkel owns a small business that sells mobile devices called “CM Mobiles” in Harrow, London. He wants to create a database to store key information about customers' addresses including customer ID, street, postcode and town name. The list of addresses for current customers of CM Mobiles is listed in the address table below.
*/
CREATE TABLE address(id int not null, street varchar(255), postcode varchar(10), town varchar(30) default "Harrow");
