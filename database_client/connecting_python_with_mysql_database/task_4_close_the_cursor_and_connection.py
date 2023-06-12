# Let's close the cursor and the connection
if connection.is_connected():
    connection.close()
    print("MySQL connection is closed.")
else:
    print("Connection is already closed")
