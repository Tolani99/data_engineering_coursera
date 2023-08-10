import mysql.connector as connector
connection = connector.connect(user = "root", password = "tolamath")
cursor = connection.cursor()

cursor.execute("USE little_lemon")

#cursor.execute("SHOW TABLES")
#for i in cursor:
#    print(i)
cursor.execute("""
        SELECT
            BookingID AS ID,
            UPPER(CONCAT(GuestFirstName, " ", GuestLastName)) AS GuestFullName
        FROM
            Bookings;
        """)
result = cursor.fetchall()
cols = cursor.column_names
print(cols)
for i in result:
    print(i)
