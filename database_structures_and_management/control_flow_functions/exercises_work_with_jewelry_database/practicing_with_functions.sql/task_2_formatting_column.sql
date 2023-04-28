/*
Task 2: Format the afterDiscount column value from the earlier result for 5% discount in '#,###,###.##' format rounded to 2 decimal places using the FORMAT function.
*/
SELECT ClientID, OrderID, format((Cost -(Cost * 5 /100)), '#, ###,###.##') As afterDi
scount FROM client_orders WHERE ItemID = 4;
