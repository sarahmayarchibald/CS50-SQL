-- In 2.sql, write a SQL query to find Cal Ripken Jr.’s salary history.
-- Sort by year in descending order.
-- Your query should return a table with two columns, one for year and one for salary.
-- results in a table with 2 columns and 17 rows.

SELECT "year", "salary" FROM "salaries"
WHERE "player_id" = (
    SELECT "id" FROM "players"
    WHERE "last_name" = "Ripken" AND "first_name" = "Cal"
)
ORDER BY "year" DESC;
