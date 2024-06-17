--  list the titles of episodes from season 6 (2008) that were released early, in 2007
-- results in a table with 1 column and 2 rows

SELECT title FROM episodes
WHERE season = 6 AND air_date BETWEEN "2007-01-01" AND "2007-12-31";
