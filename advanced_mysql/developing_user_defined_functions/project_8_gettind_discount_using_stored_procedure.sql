DELIMITER //
CREATE PROCEDURE GetDiscount(quantity int)
BEGIN
    DECLARE Cost decimal(5,2);
    IF (quantity >= 20) THEN 
        SELECT (Cost - Cost * 0.2) FROM orders WHERE quantity = quantity; 
    ELSEIF (quantity < 20 AND quantity >= 10) THEN 
        SELECT (Cost - Cost * 0.1) FROM orders;
    END IF;
END //
DELIMITER ;
