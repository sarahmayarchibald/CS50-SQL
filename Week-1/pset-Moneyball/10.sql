-- All player’s first names
-- All player’s last names
-- All player’s salaries
-- All player’s home runs
-- The year in which the player was paid that salary and hit those home runs
-- our query should return a table with five columns, per the above.
-- Order the results, first and foremost, by player’s IDs (least to greatest).
-- Order rows about the same player by year, in descending order.
-- Consider a corner case: suppose a player has multiple salaries or performances for a given year.
-- Order them first by number of home runs, in descending order, followed by salary, in descending order.
-- Be careful to ensure that, for a single row, the salary’s year and the performance’s year match.
-- Results in a table with 5 columns and 14,915 rows.

SELECT "first_name", "last_name", "salary", "HR", "salaries"."year"FROM "players"
JOIN "salaries" ON "salaries"."player_id" = "players"."id"
JOIN "performances" ON "performances"."player_id" = "players"."id"
WHERE "salaries"."year" = "performances"."year"
ORDER BY "players"."id" ASC, "salaries"."year" DESC, "performances"."year" DESC, "HR" DESC, "salary" DESC;
