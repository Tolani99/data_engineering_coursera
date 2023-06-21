/*Mr. Carl Merkel owns a small business that sells mobile devices called “CM Mobiles”. He wants to create a new table to store key information about customers including customer username, customer full name and customer email address as shown in the following table of data.
*/
CREATE DATABASE cm_devices;
use cm_devices;
show tables;
create table customer(username char(8), fullName varchar(100), email varchar(255));
show columns from customer;
