In this exercise you must create a pool of connections and get a connection from the pool to implement the stored procedures to complete the following tasks:

Establish a connection by importing MySQLConnectionPool and creating a pool with two connections.

Create and call a stored procedure named PeakHours that identifies the peak, or busiest hour, for the restaurant based on the number of bookings.

Create and call a stored procedure named GuestStatus that outputs status of each guest’s order based on which employee is assigned to the order.

Stored procedures are created to carry out routine operations on MySQL databases. They are consistent and make sure that the written SQL queries in the procedures are executed in the same way every time you call the stored procedure.

A stored procedure is created only once, and you store it in the MySQL database. You can call the stored procedures as many times as you need in your Python-based application.
