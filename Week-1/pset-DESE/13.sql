-- what is the school with the most unsatisfactory percentage

SELECT "name", "unsatisfactory", "city" FROM "schools"
JOIN "staff_evaluations" ON "staff_evaluations"."district_id" = "schools"."district_id"
WHERE "unsatisfactory" IS NOT NULL
ORDER BY "unsatisfactory" ASC, "city" ASC, "name" ASC
LIMIT 20;
