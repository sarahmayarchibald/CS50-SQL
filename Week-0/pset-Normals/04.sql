-- find the lowest normal ocean surface temperature
-- results in a table with 1 column and 1 row

SELECT "0m" FROM normals
ORDER BY "0m" ASC
LIMIT 1;
