"""
Task 2:

Little lemon needs to know the following statistics at closing:

Number of bookings

Total sale

Average sale


Help little lemon to compute the required statistics from the data in the Orders table using python.
"""
from task_1_utilizing_mysql_functions_with_python import cursor

# Query statement
sql_stmt = """
SELECT
    COUNT(BookingID) AS 'Number of Bookings', 
    SUM(BillAmount) AS 'Total sale', 
    AVG(BillAmount) AS 'Average sale' 
FROM
    Orders;
"""
# Execute the select statement
cursor.execute(sql_stmt)

# Fetch result
results = cursor.fetchall()
# Fetch columns
cols = cursor.column_names

# Print result
print("Today's statistics:")
for result in results:
    print("Number of bookings: ", result[0])
    print("Total sale: ", result[1])
    print("Average sale: ", result[2])

