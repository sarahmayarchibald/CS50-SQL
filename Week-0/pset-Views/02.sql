-- List the average colors of prints by Hokusai that include “river” in the English title.
-- (As an aside, do they have any hint of blue?)
-- results in a table with 1 column and 3 rows

SELECT average_color FROM views
WHERE english_title LIKE '%river%' AND artist = 'Hokusai';
