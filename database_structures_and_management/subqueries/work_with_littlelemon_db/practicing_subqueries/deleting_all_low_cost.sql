/*
Task 3 solution: Delete all the low-cost menu items whose price is more than the minimum price of menu items that have a price between $5 and $10. 
*/
DELETE FROM LowCostMenuItems

WHERE Price > ALL(SELECT MIN(Price) as p

FROM MenuItems

GROUP BY Type

HAVING p BETWEEN 5 AND 10);
