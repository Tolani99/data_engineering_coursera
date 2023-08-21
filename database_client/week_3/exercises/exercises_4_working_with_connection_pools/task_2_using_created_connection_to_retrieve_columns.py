"""
Task 2:

Get a connection from the database connection pool that you have created in the first task and retrieve the following columns from the Bookings table:

BookingID

GuestFirstName

GuestLastName


Retrieve the required columns and put the connection back into the pool after you have completed the task.


TIP: Use the get_connection module from the pool to use the connection. Use print statements to display the following message and close the connection to return to the pool.
"""
from task_1_creating_a_database_connection import pool

select_stmt = "SELECT BookingID, GuestFirstName, GuestLastName FROM Bookings"

# Getting a connection from the pool
conn = pool.get_connection()
    
if conn.is_connected:
    # Creating a cursor object
    cursor = conn.cursor()

    # Executing the sql query
    cursor.execute(select_stmt)

    # Fetching the query results
    results = cursor.fetchall()

    print("Upcoming Bookings are: ")

    # Retrieving the column names
    print(cursor.column_names)
    
    # Printing the results
    for dataset in results:
        print(dataset)
    
    print("\nReturning the connection back to the pool.")
    print("The connection is placed back into the pool for the next user to connect.")

else:
    conn.close()

