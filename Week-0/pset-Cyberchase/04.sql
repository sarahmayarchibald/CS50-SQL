-- write a query to find the titles of episodes that do not yet have a listed topic
-- results in a table with 1 column and 26 rows

SELECT title FROM episodes
WHERE topic IS NULL;
