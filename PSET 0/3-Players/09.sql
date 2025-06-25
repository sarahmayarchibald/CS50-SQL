/* find the players who played their final game in the MLB in 2022.
-- Sort the results alphabetically by first name, then by last name
-- results in a table with 2 columns and 516 rows */

SELECT first_name, last_name FROM players
WHERE final_game BETWEEN "2022-01-01" AND "2022-12-31"
ORDER BY first_name ASC, last_name ASC;
