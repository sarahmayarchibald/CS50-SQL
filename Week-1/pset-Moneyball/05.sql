-- write a SQL query to find all teams that Satchel Paige played for.
-- Your query should return a table with a single column, one for the name of the teams.
-- results in a table with 1 column and 3 rows.

SELECT "name" FROM "teams"
JOIN "performances" ON "performances"."team_id" = "teams"."id"
WHERE "player_id" = (
    SELECT "id" FROM "players"
    WHERE "first_name" = "Satchel" AND "last_name" = "Paige"
)
GROUP BY "name";
