--SELECT AVG(Cost) FROM Orders;
DELIMITER //

CREATE FUNCTION GetCostAverage() RETURNS DECIMAL(5,2) DETERMINISTIC

BEGIN

RETURN (SELECT AVG(Cost) FROM Orders);

END //

DELIMITER ;
--select GetCostAverage();
