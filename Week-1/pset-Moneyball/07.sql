-- which player (or players) to avoid recruiting
-- name of the player who’s been paid the highest salary, of all time,
-- in Major League Baseball.
-- two columns, one for the player’s first name and one for their last name.
-- results in a table with 2 columns and 1 row.

SELECT "first_name", "last_name" FROM "players"
JOIN "salaries" ON "salaries"."player_id" = "players"."id"
ORDER BY "salary" DESC
LIMIT 1;
