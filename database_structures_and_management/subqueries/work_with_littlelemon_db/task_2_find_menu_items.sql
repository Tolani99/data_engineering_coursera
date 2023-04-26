/*
Task 2: Write a SQL SELECT query to find the menu items that are more expensive than all the 'Starters' and 'Desserts' menu item types.

The expected output result should be the same as the following screenshot (assuming that you have created and populated the orders tables correctly).
*/
select * from MenuItems where Price > all(select Price from MenuItems where Type in('Starters', 'Desserts'));
