How can you make use of the update query to modify the record in the table once its executed using Python via MySQL Python/Connector API?

Answer:
You must invoke the commit module from the connection after the usccessful execution of the SQL query to modify the record in the respective table
