from task_1_retrieving_names_from_tables.py import cursor
print(cursor.execute("use little_lemon"))
print(cursor.execute("show tables"))

