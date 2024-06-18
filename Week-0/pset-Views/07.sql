-- list the English titles of the 5 brightest prints by Hiroshige, from most to least bright.
-- Compare them to this list on Wikipedia to see if your results match the print’s aesthetics
-- results in a table with 1 column and 5 rows

SELECT english_title FROM views
WHERE artist = 'Hiroshige'
ORDER BY brightness DESC
LIMIT 5;
