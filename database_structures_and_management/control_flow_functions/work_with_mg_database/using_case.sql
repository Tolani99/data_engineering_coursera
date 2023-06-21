select ItemID,
case
when least(Q1, Q2, Q3, Q4) <= 25000 then "Loss"
else "Profit"
end as Profit_loss
from sales_revenue;
