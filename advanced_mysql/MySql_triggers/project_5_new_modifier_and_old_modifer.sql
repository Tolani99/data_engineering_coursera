/*
Using New Modifier
*/
CREATE TRIGGER OrderQtyCheck  

  BEFORE INSERT ON Orders  

  FOR EACH ROW  

BEGIN 

  IF NEW.Quantity < 0 THEN  

    SET NEW.Quantity = 0; 

  END IF; 

END;

/*
Using Old modifier
*/

CREATE TRIGGER AfterDeleteOrder

  AFTER DELETE

  ON Orders FOR EACH ROW

INSERT INTO Audits VALUES(4,'AFTER',CONCAT('Order ',OLD.OrderID, ' was deleted at ', CURRENT_TIME(), ' on ', CURRENT_DATE()),'DELETE');
