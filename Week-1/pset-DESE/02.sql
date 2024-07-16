-- write a SQL query to find the names of districts that are no longer operational.
-- Districts that are no longer operational have “(non-op)” at the end of their name.
-- results in a table with 1 column and 121 rows.

SELECT "name" FROM "districts"
WHERE "name" LIKE "%(non-op)%";
