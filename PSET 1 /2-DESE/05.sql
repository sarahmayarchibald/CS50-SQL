-- in what cities additional public schools might be needed
-- find cities with 3 or fewer public schools.
-- Your query should return the names of the cities and the number of public schools within them,
-- ordered from greatest number of public schools to least.
-- If two cities have the same number of public schools, order them alphabetically.
-- results in a table with 2 columns and 201 rows.

SELECT city, COUNT(city) AS "Number of Public Schools" FROM schools
WHERE type = "Public School"
GROUP BY city
HAVING "Number of Public Schools" <= 3
ORDER BY "Number of Public Schools" DESC, "city" ASC;
