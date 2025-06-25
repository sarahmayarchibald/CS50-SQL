-- The Massachusetts Legislature would like to learn how much money, on average, districts spent per-pupil last year.
-- In 3.sql, write a SQL query to find the average per-pupil expenditure.
-- Name the column “Average District Per-Pupil Expenditure”.
-- per_pupil_expenditure column in the expenditures table contains the average amount, per pupil, each district spent last year.
-- You’ve been asked to find the average of this set of averages, weighting all districts equally regardless of their size.
-- results in a table with 1 column and 1 row.

-- SELECT CAST(AVG("per_pupil_expenditure")) AS "Average District Per-Pupil Expenditure"
-- FROM "expenditures";

 SELECT CAST(AVG("per_pupil_expenditure") * 1e11 AS INTEGER) / 1e11 AS "Average District Per-Pupil Expenditure" FROM expenditures;
