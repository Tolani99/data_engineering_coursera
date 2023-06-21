This section describes CTE
/*
Common Table Expressions (CTEs) are a feature in MySQL that allow you to define a temporary named result set that can be referenced within a single SQL statement. CTEs can simplify complex queries, make them more readable, and improve performance by allowing you to reuse subqueries in a single statement.
*/
WITH my_cte AS (
  SELECT column1, column2
  FROM my_table
  WHERE column3 = 'value'
)
SELECT *
FROM my_cte
WHERE column1 > 10;
/*
In this example, the CTE my_cte is defined using a SELECT statement that filters records from my_table where column3 equals 'value'. The CTE returns the column1 and column2 values for those records. The CTE can then be referenced within the second SELECT statement, which retrieves all columns from the CTE where column1 is greater than 10.

Note that the CTE is only visible within the scope of the SQL statement in which it is defined. Once the statement is executed, the CTE is discarded and does not persist in the database.

CTEs can also be used in recursive queries to traverse hierarchical data, such as trees or graphs. In recursive CTEs, the CTE references itself in the SELECT statement, allowing the query to iterate over the data until a specific condition is met.

In summary, Common Table Expressions (CTEs) in MySQL are a feature that allows you to define a temporary named result set that can be referenced within a single SQL statement. CTEs can simplify complex queries, make them more readable, and improve performance by allowing you to reuse subqueries in a single statement.
*/

