--To create database restaurant
CREATE DATABASE restaurant;

--To create table tbl
CREATE TABLE tbl( 



    table_id INT, 



    location VARCHAR(255), 



    PRIMARY KEY (table_id) 



); 

--To create table wait4er
CREATE TABLE waiter(



    waiter_id INT,



    name VARCHAR(150),



    contact_no VARCHAR(10),



    shift VARCHAR(10),



    PRIMARY KEY (waiter_id)



);

-- To create table_order
create table table_order(order_id int, date_time datetime, table_id int, waiter_id int, primary key (order_id), foreign key (table_id) references tbl(table_id), foreign key (waiter_id) references waiter(waiter_id));

--To create table customer
create table customer(customer_id int, name varchar(100), NIC_no varchar(12), contact_no varchar(10), primary key (customer_id));

--To create table reservation
create table reservation(reservation_id int, date_time datetime, no_of_pax int, order_id int, table_id int, customer_id int, primary key (reservation_id), foreign key
(order_id) references table_order(table_id), foreign key(customer_id) references customer(customer_id));

--To create table menu
create table menu(menu_id int, description varchar(255), availability int, primary key(menu_id));

--To create table menu_item
create table menu_item(menu_item_id int, description varchar(255), price float, availabiity int, menu_id int, primary key (menu_item_id), foreign key(menu_id) references menu(menu_id));



