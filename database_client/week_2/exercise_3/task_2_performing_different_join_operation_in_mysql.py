"""
Task 2:

Little Lemon notice that there are several menu items in the MenuItems records that are absent from the Menus table.

Help Little Lemon to identify the items that are present in the MenuItems records but absent from the Menus table by using a LEFT JOIN operation on the MenuItems table.

TIP: Use a JOIN operation to return the missing data by joining the MenuItems and Menu tables. An INNER JOIN returns all data that is common to both tables. A LEFT JOIN returns everything from the MenuItems table.
"""
from task_1_performing_different_join_operation_in_mysql import cursor
join_query = """
SELECT 
    MenuItems.Name AS Item_Name,
    MenuItems.Type AS Item_Type,
    MenuItems.Price AS Item_Price,
    Menus.Cuisine AS Cuisine
FROM
    MenuItems
LEFT JOIN
    Menus
ON 
    MenuItems.ItemID = Menus.ItemID
WHERE
    Cuisine is NULL
"""
# Execute the cursor
cursor.execute(join_query)

# Fetchall and store in cursor
result = cursor.fetchall()

# Get colun names
columns = cursor.column_names

# Print column names and result
print(columns)
for i in result:
    print(i)
