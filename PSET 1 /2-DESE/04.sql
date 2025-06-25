-- write a SQL query to find the 10 cities with the most public schools.
-- return the names of the cities and the number of public schools within them,
-- ordered from greatest number of public schools to least.
-- If two cities have the same number of public schools, order them alphabetically.
-- results in a table with 2 columns and 10 rows.

SELECT city, COUNT(city) AS "Number of Public Schools" FROM schools
WHERE type = "Public School"
GROUP BY city
ORDER BY "Number of Public Schools" DESC, "city" ASC
LIMIT 10;
