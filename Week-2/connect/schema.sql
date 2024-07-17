-- write a set of SQL statements to design a database LinkedIn could use.

CREATE TABLE IF NOT EXISTS "users" (
    "first_name" TEXT,
    "last_name" TEXT,
    "username" TEXT NOT NULL UNIQUE,
    "password" TEXT,
    "id" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "school" (
    "school_name" TEXT,
    "type" TEXT NOT NULL CHECK("type" IN ('Elementary School', 'Middle School', 'High School', 'Lower School', 'Upper School', 'College', 'University')),
    "location" TEXT,
    "year" INTEGER,
    "id" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "companies" (
    "comp_name" TEXT,
    "comp_ind" TEXT CHECK("comp_ind" IN ('Education', 'Finance', 'Technology', 'Healthcare')),
    "comp_location" TEXT,
    "id" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "connections" (
    "user_connect" INTEGER,
    "school_start" NUMERIC,
    "school_end" NUMERIC,
    "degree_type" TEXT CHECK("degree_type" IN('BA', 'MA', 'PhD', 'BSc')),
    "comp_start" NUMERIC,
    "comp_end" NUMERIC,
    "comp_title" TEXT,
    FOREIGN KEY("user_connect") REFERENCES "users"("id")
);
