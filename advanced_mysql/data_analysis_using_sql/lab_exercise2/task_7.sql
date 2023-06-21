/*
Task 7 Solution
Lucky Shrub need to find out how much revenue their top selling product generated. Create a stored procedure called GetProfit that returns the overall profits generated by a specific product in a specific year. This should be based on the user input of the ProductID and Year.
*/
DELIMITER //

CREATE PROCEDURE GetProfit(IN product_id VARCHAR(10), IN YearInput INT)

BEGIN

DECLARE profit DEC(7,2) DEFAULT 0.0;

DECLARE sold_quantity, buy_price, sell_price INT DEFAULT 0;

SELECT SUM(Quantity) INTO sold_quantity FROM Orders WHERE ProductID = product_id AND YEAR(Date) = YearInput;

SELECT BuyPrice INTO buy_price FROM Products WHERE ProductID = product_id;

SELECT SellPrice INTO sell_price FROM Products WHERE ProductID = product_id;

SET profit = (sell_price * sold_quantity) - (buy_price * sold_quantity);

Select profit;

END //

DELIMITER ;

-- CALL GetProfit('P1', 2020);
