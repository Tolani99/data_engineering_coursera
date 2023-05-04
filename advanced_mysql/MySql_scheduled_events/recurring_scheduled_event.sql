/*
This event will run every day and check if the number of items in the "Products" table is less than 50. If so, it will update the "NumberOfItems" column to 50.
*/
DELIMITER // 
CREATE EVENT DailyRestock
ON SCHEDULE EVERY 1 DAY
DO
  BEGIN
    IF Products.NumberOfItems < 50 THEN
      UPDATE Products SET NumberOfItems = 50;
    END IF;
  END//
DELIMITER ;
