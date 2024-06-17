-- list the titles of episodes from season 5, in reverse alphabetical order
-- results in a table with 1 column and 10 rows

SELECT title FROM episodes
WHERE season = 5
ORDER BY title DESC;
