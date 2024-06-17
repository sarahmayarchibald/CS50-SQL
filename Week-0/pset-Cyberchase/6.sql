-- find the title of the holiday episode that aired on December 31st, 2004
-- results in a table with 1 column and 1 row

SELECT title FROM episodes
WHERE air_date = "2004-12-31";
