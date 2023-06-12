from task_2_checking_connection import cursor
create_menuitem_table = """CREATE TABLE MenuItems (
ItemID INT AUTO_INCREMENT,
Name VARCHAR(200),
Type VARCHAR(100),
Price INT,
PRIMARY KEY (ItemID)
);"""
cursor.execute("show tables")
for table in cursor:
    print(table)
