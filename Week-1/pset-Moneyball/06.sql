-- write a SQL query to return the top 5 teams, sorted by the total number of hits by players in 2001.
-- Call the column representing total hits by players in 2001 “total hits”.
-- Sort by total hits, highest to lowest.
-- Your query should return two columns, one for the teams’ names and one for their total hits in 2001.
-- results in a table with 2 columns and 5 rows.

SELECT SUM("H") as "total hits", "name" FROM "performances"
JOIN "teams" ON "teams"."id" = "performances"."team_id"
WHERE "performances"."year" = 2001
GROUP BY "name"
ORDER BY "total hits" DESC
LIMIT 5;
