/*
CREATE TABLE orders (
    orderID INT PRIMARY KEY,
    orderQty INT,
    orderDate DATE
);
--Using the below Trigger
*/
DELIMITER //
CREATE TRIGGER OrderQtyCheck BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
    IF NEW.orderQty < 0 THEN
        SET NEW.orderQty = 0;
    END IF;
END//
DELIMITER ;
/*
INSERT INTO orders (orderID, orderQty, orderDate) VALUES (1, -5, '2023-05-04');

SELECT * FROM orders;

+---------+----------+------------+
| orderID | orderQty | orderDate  |
+---------+----------+------------+
|       1 |        0 | 2023-05-04 |
+---------+----------+------------+
*/
