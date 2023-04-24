SELECT Department, SUM(orderTotal) FROM orders GROUP BY Department HAVING SUM(orderTotal) > 2000;
