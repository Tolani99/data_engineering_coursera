select ClientID, round(AVG(Cost), 2) from Orders group by ClientID;
