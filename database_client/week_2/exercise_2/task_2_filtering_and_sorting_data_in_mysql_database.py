from task_1_filtering_and_sorting_data_in_mysql_database import cursor

# Check the constituent of the table
#cursor.execute("SHOW TABLES")
#for i in cursor:
#    print(i)

# Creating a filtering and sorting variable
filtering_and_sorting = """
SELECT BookingID, BillAmount
FROM Orders
WHERE BillAmount > 40
ORDER BY BookingID ASC;
"""

# Pass the string into Cursor
cursor.execute(filtering_and_sorting)

# Get result
result = cursor.fetchall()

# Get columns
cols = cursor.column_names

# Print result
print(cols)
for i in result:
    print(i)

