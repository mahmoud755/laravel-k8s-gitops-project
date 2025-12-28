-- 1. Create the database
CREATE DATABASE IF NOT EXISTS laravel_db 
CHARACTER SET utf8mb4 
COLLATE utf8mb4_unicode_ci;

-- 2. Create the application user
CREATE USER IF NOT EXISTS 'laravel_user'@'%' 
IDENTIFIED BY 'secure_password';

-- 3. Grant full privileges on laravel_db
GRANT ALL PRIVILEGES ON laravel_db.* TO 'laravel_user'@'%';

-- 4. Also grant localhost access for manual testing
GRANT ALL PRIVILEGES ON laravel_db.* TO 'laravel_user'@'localhost';

-- 5. Apply changes
FLUSH PRIVILEGES;

