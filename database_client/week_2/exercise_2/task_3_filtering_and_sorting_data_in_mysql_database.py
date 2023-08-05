"""
Task 3:

A guest wants to know the price of today’s starters and desserts. So Little Lemon need to extract the price of today’s STARTERS and DESSERT options from their database.

Create a query that extracts the prices and details of starters and dessert options only from the MenuItems table. Order these prices from lower to higher.
"""
from task_1_filtering_and_sorting_data_in_mysql_database import cursor

# Filter and sorting statement
filter_and_sorting_stmt = """
SELECT *
FROM MenuItems
WHERE Type = "STARTERS" OR Type = "DESSERTS"
ORDER BY Price ASC;
"""
# Execute the sorting statement
cursor.execute(filter_and_sorting_stmt)

# Fetch all result
result = cursor.fetchall()

# Get column names
column = cursor.column_names

# Print column names and result
print(column)
for i in result:
    print(i)
