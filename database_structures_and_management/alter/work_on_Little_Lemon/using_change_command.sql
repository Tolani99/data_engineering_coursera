/*
Task 5: Use the CHANGE command with ALTER statement to rename the column Order_Status in the OrderStatus table to DeliveryStatus.
*/
alter table food_delivery_status change Order_Status DeliveryStatus varchar(20);
