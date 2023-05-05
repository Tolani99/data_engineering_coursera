/*
Task 2:

Create an UPDATE trigger called ProductSellPriceUpdateCheck. This trigger must check that products are not updated with a SellPrice that is less than or equal to the BuyPrice. If this occurs, add a notification to the Notifications table for the sales department so they can ensure that product prices were not updated with the incorrect values. This trigger sends a notification to the Notifications table that warns the sales department of the issue.

The notification message should be in the following format: ProductID + was updated with a SellPrice of  + SellPrice + which is the same or less than the BuyPrice
*/
CREATE TRIGGER ProductSellPriceUpdateCheck 
AFTER UPDATE ON Products 
FOR EACH ROW 
BEGIN 
    IF NEW.SellPrice <= OLD.BuyPrice THEN 
        INSERT INTO Notifications (Message) 
        VALUES (CONCAT('ProductID ', NEW.ProductID, ' was updated with a SellPrice of ', NEW.SellPrice, ' which is the same or less than the BuyPrice')); 
    END IF; 
END
/*
This trigger will be executed after an update on the Products table and will check if the SellPrice of the updated product is less than or equal to the BuyPrice. If this occurs, then a notification will be added to the Notifications table to inform the sales department of the incorrect value. The notification message will be in the required format.
*/
