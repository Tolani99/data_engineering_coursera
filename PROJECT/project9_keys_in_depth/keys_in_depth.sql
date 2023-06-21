--crate database automobile
create database automobile;
use automobile;

--create table Vehicle
create table Vehicle(Vehicle_ID varchar(10), OwnerID varchar(10), phoneNumber varchar(10), phoneNumber int, primary key (Vehicle_ID));

--show tables;
show tables;

--create table owner
CREATE TABLE Owner(ownerID VARCHAR(10), ownerName VARCHAR(50), ownerdrerss  VARCHAR(255), PRIMARY KEY (ownerID));

--show columns from vehicle;
show columns from vehicle;

--alter table
ALTER TABLE vehicle ADD FOREIGN KEY (ownerID) REFERENCES owner (ownerID);


