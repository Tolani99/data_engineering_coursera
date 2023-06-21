/*
Task 3: Write a SQL SELECT query to find the menu items that costs the same as the starter menu items that are Italian cuisine.

The expected output result should be the same as the following screenshot (assuming that you have created and populated the orders tables correctly). 
*/
SELECT * FROM MenuItems WHERE Price = (SELECT Price FROM Menus, MenuItems WHERE Menus.ItemID = MenuItems.ItemID AND MenuItems.Type = 'Starters' AND Cuisine = 'Italian'); 
