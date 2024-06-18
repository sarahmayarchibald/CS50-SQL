-- find the average entropy of prints by Hiroshige, rounded to two decimal places.
-- Call the resulting column “Hiroshige Average Entropy”.
-- results in a table with 1 column and 1 row

SELECT ROUND(AVG(entropy), 2) AS 'Hiroshige Average Entropy' FROM views
WHERE artist = 'Hiroshige';
