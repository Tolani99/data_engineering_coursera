DELIMITER //

CREATE FUNCTION GetTotalCost(Cost decimal(5, 2)) RETURNS decimal(5, 2) DETERMINISTIC 
BEGIN 
    IF (Cost >= 100 AND Cost < 500) THEN 
        SET Cost = Cost - (Cost * 0.1); 
    ELSEIF (Cost >= 500) THEN 
        SET Cost = Cost - (Cost * 0.2); 
    END IF; 
    RETURN (Cost); 
END//

DELIMITER ;
