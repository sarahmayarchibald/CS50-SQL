 -- find the first and last names of players who were not born in the United States.
 -- sort the results alphabetically by first name, then by last name.

SELECT first_name, last_name FROM players
WHERE birth_country NOT LIKE "%us%"
ORDER BY first_name ASC, last_name;
