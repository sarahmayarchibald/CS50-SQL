-- find the name (or names) of the school district(s) with the single least number of pupils.
-- Report only the name(s).
-- results in a table with 1 column and 1 row.

SELECT "name" FROM "districts"
JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
ORDER BY "pupils" ASC
LIMIT 1;
