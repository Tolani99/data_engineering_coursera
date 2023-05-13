/*
Lucky Shrub need to query the Clients table to retrieve the following data:

1. The names of clients who are from Tucson, Arizona.

2. The names of clients who are from Arizona but outside of Tucson.

3. A list of clients with the maximum loyalty points.

4. A list of clients whose date of birth falls on a given date.

To retrieve this data, they can write the following queries:
*/

-- 1. All clients from Tucson, Arizona

SELECT ClientID, FullName FROM Clients WHERE City = Tucson;

-- 2. The names of clients who are from Arizona but outside of Tucson.

SELECT ClientID, FullName FROM Clients WHERE State = Arizona AND City <> Tucson;

-- 3. A list of clients with the maximum loyalty points.
SELECT ClientID, MAX(LoyaltyPoints) FROM Clients;

-- 4. A list of clients whose date of birth falls on a given date.
SELECT ClientID, FullName FROM Clients WHERE DOB = 1990-01-01;

/*
With tens of thousands of clients in the table, these queries will take a long time to return the results. This is an inefficient approach and doesn't adhere to database optimization guidelines.

The solution is for Lucky Shrub to create indexes on the columns within the Client’s table that MySQL uses to carry out these searches. These are the City, State, LoyaltyPoints, and DOB columns. By creating indexes on these columns, Lucky Shrub significantly reduce the time it takes to execute each query. This leads to a more efficient and more optimal database.
*/
