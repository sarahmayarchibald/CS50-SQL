-- return the first name, last name, and debut date of players born in Pittsburgh, Pennsylvania (PA).
-- Sort the results first by debut date—from most recent to oldest—then alphabetically by first name,
-- followed by last name.
-- results in a table with 3 columns and 134 rows.

SELECT first_name, last_name, debut FROM players
WHERE birth_city = 'Pittsburgh'
ORDER BY debut DESC, first_name ASC, last_name ASC;
