-- write a query that counts the number of episodes released in the last 6 years, from 2018 to 2023, inclusive
-- results in a table with 1 column and 1 row

SELECT COUNT(episode_in_season) AS "Number of episodes 2018 to 2023" FROM episodes
WHERE air_date BETWEEN "2018-01-01" AND "2023-12-31";
