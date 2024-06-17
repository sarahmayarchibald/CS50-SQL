-- write a SQL query to explore a question of your choice. This query should:
-- involve at least one condition, using WHERE with AND or OR

SELECT topic from episodes
WHERE topic LIKE "%math%" OR topic LIKE "%money%";
