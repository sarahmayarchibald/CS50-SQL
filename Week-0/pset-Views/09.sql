-- Find the English title and artist of the print with the highest brightness.
-- results in a table with 2 columns and 1 row

SELECT english_title, artist FROM views
ORDER BY brightness DESC
LIMIT 1;
