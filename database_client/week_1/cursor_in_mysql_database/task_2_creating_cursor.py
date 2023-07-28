"""
Task 2:

Creating the cursor is an important step for communicating with the entire MySQL database using Python.

You have learned about the different approaches for creating cursors. Which approach you use depends on your application and resource optimization.

Run a test between the standard and the buffered cursor to check what type of cursor will work for the situation given below:
"""
from task_1_retrieving_names_from_tables import cursor
cursor.execute("use little_lemon")
cursor.execute("select * from Bookings")
cursor.execute("select * from Orders")
