CREATE TABLE Food_Orders_Delivery_status (OrderID int PRIMARY KEY, Date_food_order_placed_with_supplier date, Date_food_order_received_from_supplier date, Order_status varchar(20));
INSERT INTO Food_Orders_Delivery_status(OrderID, Date_food_order_placed_with_supplier, Date_food_order_received_from_supplier, Order_status) VALUES(1, '2022-04-05', '2022-04-05', 'Delivered'), (2, '2022-03-08', '2022-10-08', 'Delivered'), (3, '2022-05-19', NULL, 'In Progress'), (4, '2022-01-10', '2022-01-15', 'Delivered');