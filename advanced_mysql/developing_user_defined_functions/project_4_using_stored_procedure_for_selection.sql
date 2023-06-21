-- To perform SELECT * FROM CLIENTS using Procedures

DELIMITER //

CREATE PROCEDURE GetAllClients()

BEGIN

SELECT * FROM Clients;

END //

DELIMITER ;

-- call GetAllClients();
