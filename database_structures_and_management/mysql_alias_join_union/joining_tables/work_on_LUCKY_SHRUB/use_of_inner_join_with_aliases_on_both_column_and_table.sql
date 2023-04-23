select O.ProductID as PD, C.Address as AD, C.FullName as FN from Orders as O inner join Clients as C on C.ClientID =O.ClientID;
