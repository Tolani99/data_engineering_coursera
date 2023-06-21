/*
We want to list paintings that are priced higher than the average. Basically, we want to get painting names along with the listed prices, but only for the ones that cost more than average. That means that we first need to find this average price; here’s where the scalar subquery comes into play:
*/
SELECT name, listed_price
FROM paintings
WHERE listed_price > (
    SELECT AVG(listed_price)
    FROM paintings
);
/*
Our subquery is in the WHERE clause, where it filters the result set based on the listed price. This subquery returns a single value: the average price per painting for our gallery.
*/
