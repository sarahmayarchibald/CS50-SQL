-- query to display the names of all school districts and the number of pupils enrolled in each.
-- results in a table with 2 columns and 396 rows.

SELECT "name", "pupils" FROM "districts"
JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
ORDER BY "pupils" DESC, "name" ASC;
