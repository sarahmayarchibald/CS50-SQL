--  find the highest normal ocean surface temperature
-- results in a table with 1 column and 1 row

SELECT "0m" FROM normals
ORDER BY "0m" DESC
LIMIT 1;
