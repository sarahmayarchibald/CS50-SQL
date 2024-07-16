--Suppose you’ve just been hired to help ATL re-design their database system. 
--In a file called schema.sql in a folder called atl, write a set of SQL statements to design a database 
--with which Hartsfield-Jackson could keep track of its passengers and their flights.

CREATE TABLE IF NOT EXISTS "passengers" (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER,
    PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "checkIns" (
    "timestamp" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "flight" TEXT
);

CREATE TABLE IF NOT EXISTS "airlines" (
    "id" INTEGER,
    "airline" TEXT,
    "concourse" TEXT NOT NULL CHECK("concourse" IN ('A', 'B', 'C', 'D', 'E', 'F', 'T'))
);

CREATE TABLE IF NOT EXISTS "flights" (
    "id" INTEGER,
    "flight_num" INTEGER NOT NULL,
    "airline" TEXT UNIQUE,
    "from_airp" TEXT,
    "to_airp" TEXT,
    "dep_dateTime" NUMERIC,
    "arr_dateTime" NUMERIC,
    FOREIGN KEY ("airline") REFERENCES "airlines"("airline")
);
