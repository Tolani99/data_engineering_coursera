/*
Task 1:

Create an INSERT trigger called ProductSellPriceInsertCheck. This trigger must check if the SellPrice of the product is less than the BuyPrice after a new product is inserted in the Products table. If this occurs, then a notification must be added to the Notifications table to inform the sales department. The sales department can then ensure that the incorrect values were not inserted by mistake.

The notification message should be in the following format: A SellPrice less than the BuyPrice was inserted for ProductID + ProductID

The expected output result should be the same as that generated by the values for the ProductID P7 in the following screenshot.
*/
/*
DELIMITER //
CREATE TRIGGER ProductSellPriceInsertCheck AFTER INSERT ON Products
FOR EACH ROW
BEGIN
  DECLARE Notifications VARCHAR(255);
  IF NEW.SellPrice < NEW.BuyPrice THEN
    SET Notifications = CONCAT('A SellPrice same or less than the BuyPrice was inserted for ProductID ', NEW.ProductID);
  END IF;
END//
DELIMITER ;
*/
DELIMITER //
CREATE TRIGGER ProductSellPriceInsertCheck
AFTER INSERT ON Products
FOR EACH ROW
BEGIN
    IF NEW.SellPrice < NEW.BuyPrice THEN
        INSERT INTO Notifications (Message)
        VALUES ('A SellPrice less than the BuyPrice was inserted for ProductID ' + NEW.ProductID);
    END IF;
END;
END//
DELIMITER ;
