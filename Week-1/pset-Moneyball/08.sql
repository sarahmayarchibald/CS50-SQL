-- How much would the A’s need to pay to get the best home run hitter this past season?
-- find the 2001 salary of the player who hit the most home runs in 2001.
-- Your query should return a table with one column, the salary of the player

SELECT "salary" FROM "performances"
JOIN "salaries" ON "salaries"."player_id" = "performances"."player_id"
WHERE "salaries"."year" = 2001
ORDER BY "HR" DESC, "salary" DESC
LIMIT 1;
