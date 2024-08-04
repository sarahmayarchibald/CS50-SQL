-- Importing meteorites.csv into a temporary table
CREATE TABLE IF NOT EXISTS "meteorites_temp" (
    "name" TEXT NOT NULL,
    "id" INTEGER,
    "nametype" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT CHECK("discovery" IN ("Fell", "Found")),
    "year" INTEGER,
    "lat" REAL,
    "long" REAL,
    PRIMARY KEY("id")
);

-- Import CSV file
.import --csv --skip 1 meteorites.csv meteorites_temp

-- Any empty values in meteorites.csv are represented by NULL in the meteorites table
UPDATE "meteorites_temp"
SET "mass" = NULL
WHERE "mass" = 0;

UPDATE "meteorites_temp"
SET "year" = NULL
WHERE "year" = '';

UPDATE "meteorites_temp"
SET "lat" = NULL
WHERE "lat" = 0;

UPDATE "meteorites_temp"
SET "long" = NULL
WHERE "long" = 0;

-- All columns with decimal values should be rounded to the nearest hundredths place
UPDATE "meteorites_temp"
SET "mass" = ROUND("mass", 2),
    "lat" = ROUND("lat", 2),
    "long" = ROUND("long", 2);

-- All meteorites with the nametype “Relict” are not included in the meteorites table.
DELETE FROM "meteorites_temp"
WHERE "nametype" LIKE "%relict%";

-- Create the meteorites table
CREATE TABLE IF NOT EXISTS "meteorites" (
    "id" INTEGER,
    "name" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" REAL,
    "long" REAL,
    PRIMARY KEY("id")
);

-- Transfer the data from your temporary table into a meteorites table
-- Sort by year and name
-- id are auto-incremented because of the primary key in the table "meteorites"
INSERT INTO "meteorites" (
    "name",
    "class",
    "mass",
    "discovery",
    "year",
    "lat",
    "long"
)
SELECT
    "name",
    "class",
    "mass",
    "discovery",
    "year",
    "lat",
    "long"
FROM "meteorites_temp"
ORDER BY "year", "name";

-- Good practice to delete the temp table
DROP TABLE "meteorites_temp";
