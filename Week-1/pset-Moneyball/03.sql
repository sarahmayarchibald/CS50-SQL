-- write a SQL query to find Ken Griffey Jr.’s home run history.
-- Sort by year in descending order.
-- Note that there may be two players with the name “Ken Griffey.” This Ken Griffey was born in 1969.
-- Your query should return a table with two columns, one for year and one for home runs.
-- results in a table with 2 columns and 13 rows.

SELECT "HR", "year" FROM "performances"
WHERE "player_id" = (
    SELECT "id" FROM "players"
    WHERE "birth_year" = 1969 AND "first_name" = "Ken" AND "last_name" = "Griffey"
)
ORDER BY "year" DESC;
