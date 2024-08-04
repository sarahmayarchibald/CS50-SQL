CREATE TABLE IF NOT EXISTS "ingredients" (
    "id" INTEGER,
    "items" TEXT CHECK("items" IN ('Cocoa', 'Flour', 'Buttermilk', 'Sugar', 'Sprinkles', 'Oil', 'Butter', 'Brown Sugar','Yeast')),
    "price" REAL NOT NULL,
    "unit" TEXT CHECK("unit" IN ('grams','pounds')),
    PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "donuts" (
    "id" INTEGER,
    "name" TEXT,
    "contents" TEXT,
    "gluten-free" BOOLEAN,
    "price-per-donut" REAL,
    PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "DonutIngredients" (
    "ingredients_id" INTEGER,
    "donut_id" INTEGER,
    PRIMARY KEY("ingredients_id", "donut_id")
    FOREIGN KEY("ingredients_id") REFERENCES "ingredients"("id")
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id")
);

CREATE TABLE IF NOT EXISTS "customers" (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "orders" (
    "id" INTEGER,
    "customer_id" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE IF NOT EXISTS "DonutsOrders" (
    "order_id" INTEGER,
    "donut_id" INTEGER,
    "quantity" INTEGER,
    PRIMARY KEY("order_id", "donut_id"),
    FOREIGN KEY("order_id") REFERENCES "orders"("id"),
    FOREIGN KEY("donut_id") REFERENCES "orders"("id")
);

