-- count how many prints by Hiroshige have English titles that refer to the “Eastern Capital”.
-- Hiroshige’s prints were created in Japan’s “Edo period,” referencing the eastern capital city of Edo, now Tokyo
-- results in a table with 1 column and 1 row

SELECT COUNT(english_title) FROM views
WHERE english_title LIKE '%Eastern Capital%'
AND artist = 'Hiroshige';
