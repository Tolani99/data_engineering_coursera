SELECT Department, SUM(orderTotal) AS total FROM orders GROUP BY Department HAVING total > 2275;
