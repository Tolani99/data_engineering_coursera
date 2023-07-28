"""
Task 1:

Insert data in all four tables in the little_lemon database using Python. Use the following INSERT queries to populate the tables with relevant data.

Use the SELECT * FROM Table_Name command to check the output and ensure that each query has been executed successfully. The expected output of each query must resemble the following screenshots
"""

import mysql.connector as connector
connection = connector.connect(user = "root", password = "tolamath")
cursor = connection.cursor(buffered = True)
cursor.execute("USE little_lemon")
#cursor.execute("SHOW TABLES")
#for table in cursor:
#	print(table)

print("Inserting data in MenuItems table")
insert_bookings="""
INSERT INTO Bookings (BookingID, TableNo, GuestFirstName, 
GuestLastName, BookingSlot, EmployeeID)
VALUES
(1,12,'Anna','Iversen','19:00:00',1),
(2, 12, 'Joakim', 'Iversen', '19:00:00', 1),
(3, 19, 'Vanessa', 'McCarthy', '15:00:00', 3),
(4, 15, 'Marcos', 'Romero', '17:30:00', 4),
(5, 5, 'Hiroki', 'Yamane', '18:30:00', 2),
(6, 8, 'Diana', 'Pinto', '20:00:00', 5);"""
cursor.execute(insert_bookings)
#print("Total number of rows in MenuItem table ", cursor.rowcount)
#Once the query is executed, you commit the change into the database
connection.commit()

print("Inserting data in Menus table.")
# Populating MenuItems table
insert_menuitems="""
INSERT INTO MenuItems (ItemID, Name, Type, Price)
VALUES
(1,'Olives','Starters',5),
(2,'Flatbread','Starters', 5),
(3, 'Minestrone', 'Starters', 8),
(4, 'Tomato bread','Starters', 8),
(5, 'Falafel', 'Starters', 7),
(6, 'Hummus', 'Starters', 5),
(7, 'Greek salad', 'Main Courses', 15),
(8, 'Bean soup', 'Main Courses', 12),
(9, 'Pizza', 'Main Courses', 15),
(10,'Greek yoghurt','Desserts', 7),
(11, 'Ice cream', 'Desserts', 6),
(12, 'Cheesecake', 'Desserts', 4),
(13, 'Athens White wine', 'Drinks', 25),
(14, 'Corfu Red Wine', 'Drinks', 30),
(15, 'Turkish Coffee', 'Drinks', 10),
(16, 'Turkish Coffee', 'Drinks', 10),
(17, 'Kabasa', 'Main Courses', 17);"""
cursor.execute(insert_menuitems)
#print("Total number of rows in Menu table: ", cursor.rowcount)
connection.commit()

insert_menu="""
INSERT INTO Menus (MenuID, ItemID, Cuisine)
VALUES
(1, 1, 'Greek'),
(1, 7, 'Greek'),
(1, 10, 'Greek'),
(1, 13, 'Greek'),
(2, 3, 'Italian'),
(2, 9, 'Italian'),
(2, 12, 'Italian'),
(2, 15, 'Italian'),
(3, 5, 'Turkish'),
(3, 17, 'Turkish'),
(3, 11, 'Turkish'),
(3, 16, 'Turkish');"""
cursor.execute(insert_menu)
#print("Total number of rows in Menu table: ", cursor.rowcount)
connection.commit()

"""
Task 2:

In the first task, you created tables to hold the restaurant’s data. Now Little Lemon requires you to retrieve the following data for each guest:

Guest first and last names.

The table number assigned to each guest.
"""

all_bookings = """SELECT GuestFirstName, GuestLastName, TableNo FROM Bookings"""
cursor.execute(all_bookings)
#result = cursor.fetchall()
#print(result)

#Column names in order
cols = cursor.column_names
#Printing the column names and all results from results using for loop
#print("""Data in the "Bookings" table: """)
#print(cols)
#for i in cursor:
#	print(i)

"""
Task 3:

Little Lemon’s queries are returning large volumes of data. They need to find a way to return the data in smaller, more manageable chunks. Let’s see if you can help them to return just the first three items from the menu. In other words, return the first three items from the cursor. Complete this task using the following steps:
"""

select_stmt = "SELECT * FROM Menus"
cursor.execute(select_stmt)
result = cursor.fetchmany(3)
#Column names in order
cols = cursor.column_names
# printing column names and all results from results using for loop
#print("""Data in the "Menu" table:""")
#print(cols)
#for table in result:
#    print(table)

