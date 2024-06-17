-- write a SQL query to list the titles and topics of all episodes teaching fractions
-- results in a table with 2 columns and 6 rows

SELECT title, topic FROM episodes
WHERE topic LIKE "%fraction%";
