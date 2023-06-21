/*
This creates an event named GenerateRevenueReport that inserts data from the Orders table into the ReportData table, for orders that were placed between August 1, 2022 and August 31, 2022. The event is scheduled to run once, 12 hours after the current timestamp.
*/
DELIMITER //
CREATE EVENT GenerateRevenueReport 
ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 12 HOUR 
DO 
BEGIN 
   INSERT INTO ReportData (OrderID, ClientID, ProductID, Quantity, Cost, Date) 
   SELECT OrderID, ClientID, ProductID, Quantity, Cost, Date
   FROM Orders 
   WHERE Date BETWEEN '2022-08-01' AND '2022-08-31';
END//
DELIMITER ;
