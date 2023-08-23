from task_1_creating_a_database_connection import pool, connection

guests = ["Anna", "Marcos", "Diana", "Joakim", "Hiroki"]

for guest in guests:
    try:
        guest_connected = pool.get_connection()
        print("[{}] is connected.\n".format(guest))
    except:
        print("No more connections are available.")
        print("Adding new connections in the pool.")
        # Add the connection into the pool
        pool.add_connection(cnx = connection)
        print("A new connection is added in the pool.\n")

        user_connected = pool.get_connection()
        print("[{}] is connected.\n".format(guest))
