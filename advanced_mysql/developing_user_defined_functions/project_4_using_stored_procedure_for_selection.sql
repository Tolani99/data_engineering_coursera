DELIMITER //

CREATE PROCEDURE GetAllClients()

BEGIN

SELECT * FROM Clients;

END //

DELIMITER ;

-- call GetAllClients();
