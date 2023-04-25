/*
Task 3

Write a SQL statement that adds a new column called 'Role' to the Staff table with the following constraints:

Role: VARCHAR(50) and NOT NULL

The expected output result should be the same as the following screenshot (assuming that you have created and populated the tables correctly.)
*/
alter table Staff add(Role varchar(50) not null);
