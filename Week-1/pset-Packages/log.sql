
-- *** The Lost Letter ***
-- id and contents of the missing package to 2 Finn address: 384
SELECT id, contents FROM packages
WHERE to_address_id = (
    SELECT id FROM addresses
    WHERE address LIKE "%2 Finn%"
);

-- trace the journey of package 384 Congratulatory Letter
SELECT * FROM scans
WHERE package_id = 384;

-- find the type and address from the id address 854
SELECT * FROM addresses
WHERE id = 854;

-- *** The Devious Delivery ***
SELECT * FROM addresses
WHERE id = (
    SELECT address_id FROM scans
    WHERE package_id = (
        SELECT id FROM packages
        WHERE from_address_id IS NULL
        AND action = "Drop"
    )
);

SELECT * FROM packages
WHERE from_address_id IS NULL;

-- *** The Forgotten Gift ***
SELECT * from scans
WHERE package_id = (
    SELECT id FROM packages
    WHERE from_address_id = (
    SELECT id FROM addresses
    WHERE address = "109 Tileston Street"
    )
    AND driver_id = (
        SELECT id FROM packages
        WHERE to_address_id = (
        SELECT id FROM addresses
        WHERE address = "728 Maple Place"
        )
    )
);
