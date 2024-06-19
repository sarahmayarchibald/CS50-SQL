-- return the first and last names of all right-handed batters.
-- Sort the results alphabetically by first name, then by last name
-- results in a table with 2 columns and 12878 row.

SELECT first_name, last_name FROM players
WHERE bats = 'R'
ORDER BY first_name ASC, last_name ASC;
