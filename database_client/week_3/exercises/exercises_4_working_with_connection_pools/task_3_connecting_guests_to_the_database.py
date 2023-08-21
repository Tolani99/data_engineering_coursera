from task_1_creating_a_database_connection import pool

guests = ["Anna", "Marcos", "Diana", "Joakim", "Hiroki"]

# Keep track of the current number of connections
current_connections = 0

# Iterate through the guests
for guest in guests:
    # Get connection
    with pool.get_connection() as conn:
        # Check if the connection is established
        if conn.is_connected():
            # Create cursor object
            cursor = conn.cursor()
            
            # Perform database operations here
            # ...

            # Print connection status
            print("{} is connected".format(guest))
        else:
            print("It's not connected")
    
    # Connection is automatically released after the context block
    
    # If the pool doesn't have available connections, add a new connection
    if current_connections >= pool.pool_size:
        pool.add_connection()
        current_connections += 1
        print("A new connection is added in the pool.")
