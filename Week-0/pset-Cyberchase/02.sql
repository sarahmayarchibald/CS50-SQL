-- list the season number of, and title of, the first episode of every season
-- results in a table with 2 columns and 14 rows

SELECT season, title FROM episodes
WHERE episode_in_season = 1;
