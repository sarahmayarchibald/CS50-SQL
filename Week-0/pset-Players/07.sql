-- count the number of players who bat (or batted) right-handed and throw (or threw) left-handed, or vice versa
-- results in a table with 1 columns and 1 row

SELECT COUNT(id) FROM players
WHERE (bats = 'R' AND throws = 'L') OR (bats = 'L' AND throws = 'R');
