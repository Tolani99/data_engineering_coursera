"""
Task 1:

Little Lemon needs the following information for each of the items on their menu:

The name of each item in the menu,

Each menu item’s type,

Each menu item’s cuisine,

and the price of each item in the menu.
"""

import mysql.connector as connector
connection = connector.connect(user = "root", password = "tolamath")
cursor = connection.cursor()

# Use little_lemon
cursor.execute("USE little_lemon")

# The join query statement
join_query = """
SELECT 
    MenuItems.Name AS Item_Name,
    MenuItems.Type AS Item_Type,
    MenuItems.Price AS Item_Price,
    Menus.Cuisine AS Cuisine
FROM
    MenuItems
INNER JOIN
    Menus
ON
    MenuItems.ItemID = Menus.ItemID
"""

# The execution of the join query stmt
#cursor.execute(join_query)

# Fetching result
#result = cursor.fetchall()

# Getting the columns
#col = cursor.column_names

# Printing columns and result
#print(col)
#for i in result:
#    print(i)

