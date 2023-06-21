/*
Write a SQL SELECT query to find the menu items that were not ordered by the guests who placed bookings.

The expected output result should be the same as the following screenshot (assuming that you have created and populated the orders tables correctly).
*/
SELECT * FROM MenuItems

WHERE NOT EXISTS (SELECT * FROM TableOrders, Menus WHERE TableOrders.MenuID = Menus.MenuID AND Menus.ItemID = MenuItems.ItemID);
