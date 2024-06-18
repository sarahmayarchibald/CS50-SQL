-- write a SQL query to answer a question of your choice about the prints. The query should:
-- Make use of AS to rename a column
-- Involve at least one condition, using WHERE
-- Sort by at least one column, using ORDER BY

SELECT print_number, english_title AS 'Print# & Title from Hokusai' FROM views
WHERE artist = 'Hokusai'
ORDER BY print_number DESC;
