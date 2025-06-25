-- SQL query to find the names and cities of all public schools in Massachusetts.
-- not all schools in the schools table are considered traditional public schools.
-- Massachusetts also recognizes charter schools,
-- results in a table with 2 columns and 1,761 rows.

SELECT "name", "city" FROM "schools"
WHERE "type" = "Public School";
