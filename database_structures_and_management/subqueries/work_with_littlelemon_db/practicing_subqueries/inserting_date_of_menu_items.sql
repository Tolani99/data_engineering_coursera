/*
Task 2: Insert data of menu items with a minimum price based on the 'Type' into the LowCostMenuItems table.

Hint: In this task, you must write subqueries in INSERT statements. Your subquery would find the details of menu items with a minimum price based on the 'Type' of menu item. In other words, GROUP BY Type. Then you can insert the data retrieved from the subquery into the LowCostMenuItems table using an INSERT INTO SELECT statement.
*/
INSERT INTO LowCostMenuItems

SELECT ItemID,Name,Price

FROM MenuItems

WHERE Price =ANY(SELECT MIN(Price) FROM MenuItems GROUP BY Type);
