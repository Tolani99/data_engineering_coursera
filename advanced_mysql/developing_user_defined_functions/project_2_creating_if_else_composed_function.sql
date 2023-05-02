DELIMETER//
create function GetTotalCost(Cost decimal(5, 2)) returns decimal(5, 2) deterministic begin if (Cost >= 100 and Cost < 500) then set Cost = Cost - (Cost * 0.1); elseif (Cost >= 500) then set Cost = Cost - (Cost * 0.2); end if; return
(Cost);
END//
DELIMETER ;
SELECT GetTotalCost(500);
