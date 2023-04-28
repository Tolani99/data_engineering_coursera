/*
Task 1: Use the MySQL CEIL function to express the cost after the discount in the form of the smallest integer as follows:

Give a 5% discount to the clients who have ordered luxury watches. Express the cost after the discount in the form of the smallest integer, which is not less than the value shown in the afterDiscount column in the result table given below. Use the MySQL CEIL function to do this.
*/
SELECT ClientID, OrderID, ceil((Cost -(Cost * 5 /100))) As afterDiscount FROM client_orders WHERE ItemID = 4;
