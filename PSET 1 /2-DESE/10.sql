-- find the 10 public school districts with the highest per-pupil expenditures.
-- Your query should return the names of the districts and the per-pupil expenditure for each.
-- results in a table with 2 columns and 10 rows.

SELECT "name", "per_pupil_expenditure"
FROM "districts"
JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
WHERE "type" LIKE "%Public%"
ORDER BY "per_pupil_expenditure" DESC
LIMIT 10;
