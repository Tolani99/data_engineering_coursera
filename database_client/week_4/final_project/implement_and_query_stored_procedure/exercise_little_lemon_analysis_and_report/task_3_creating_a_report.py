"""
Task 3:
Create a report containing the following information:

The name and EmployeeID of the Little Lemon manager.

The name and role of the employee who receives the highest salary.

The number of guests booked between 18:00 and 20:00.

The full name and BookingID of all guests waiting to be seated with the receptionist in sorted order with respect to their BookingSlot.

"""
from task_1_establish_a_connection_pool import pool_b, Error

try:
    conn = pool_b.get_connection()
    cursor = conn.cursor()
    cursor.execute("USE lemon_analysis")

    # Task 3a: Get Little Lemon manager's name and EmployeeID
    manager_query = "SELECT FirstName, LastName, EmployeeID FROM Employee WHERE Role = 'Manager'"
    cursor.execute(manager_query)
    manager_name, manager_employee_id = cursor.fetchone()

    # Task 3b: Get employee with the highest salary's name and role
    highest_salary_query = "SELECT FirstName, LastName, Role FROM Employee ORDER BY Salary DESC LIMIT 1"
    cursor.execute(highest_salary_query)
    highest_salary_name, highest_salary_role = cursor.fetchone()

    # Task 3c: Get number of guests booked between 18:00 and 20:00
    guests_count_query = "SELECT COUNT(*) FROM Bookings WHERE BookingTime BETWEEN '18:00' AND '20:00'"
    cursor.execute(guests_count_query)
    guests_count = cursor.fetchone()[0]

    # Task 3d: Get full name and BookingID of waiting guests
    waiting_guests_query = "SELECT BookingID, CONCAT(FirstName, ' ', LastName) AS FullName FROM Bookings WHERE Status = 'Waiting' ORDER BY BookingSlot"
    cursor.execute(waiting_guests_query)
    waiting_guests = cursor.fetchall()

    print("Little Lemon Manager: {} (EmployeeID: {})".format(manager_name, manager_employee_id))
    print("Employee with Highest Salary: {} (Role: {})".format(highest_salary_name, highest_salary_role))
    print("Number of Guests Booked between 18:00 and 20:00:", guests_count)
    print("Waiting Guests:")
    for guest in waiting_guests:
        print("BookingID:", guest[0], "- FullName:", guest[1])

except Error as e:
    print("Error:", e)
finally:
    cursor.close()
    conn.close()
