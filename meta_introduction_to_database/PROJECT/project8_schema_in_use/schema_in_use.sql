create database shopping_cart_db;

create table customer(customer_ID int, name varchar(100), address varchar(255), email varchar(100), phone varchar(10), primary key (customer_id));

create table product(product_ID int, name varchar(100), price numeric(8,2), description varchar(255), primary key(product_id));

create table cart_order(order_id int, customer_id int, product_id int, quantity int, order_date date, status varchar(100), primary key (order_id), foreign key (customer_id) references customer(customer_id), foreign key(product_id) references product(product_id));
