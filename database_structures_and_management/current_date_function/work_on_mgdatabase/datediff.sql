select datediff(DeliveryDate, OrderDate) from mg_orders where DeliveryDate is not null;
