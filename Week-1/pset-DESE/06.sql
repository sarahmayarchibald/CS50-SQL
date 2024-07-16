-- find the names of schools (public or charter!) that reported a 100% graduation rate.
-- results in a table with 1 column and 9 rows.

SELECT "name"
FROM "schools"
JOIN "graduation_rates" ON "graduation_rates"."school_id" = "schools"."id"
WHERE "graduated" = 100
ORDER BY "name" ASC;
