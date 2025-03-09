-- create_dataset.sql
-- Drop the table if it exists to ensure a clean setup
DROP TABLE IF EXISTS houses;

-- Create the 'houses' table with appropriate columns
CREATE TABLE houses (
    id SERIAL PRIMARY KEY,
    square_footage INT NOT NULL,
    price INT NOT NULL
);

-- Insert sample data into the 'houses' table.
-- We generate data for square footage values from 500 to 2000 (in increments of 100).
-- The price is calculated as: price = 50000 + 150 * square_footage + a random noise between 0 and 10000.
INSERT INTO houses (square_footage, price)
SELECT 
    x AS square_footage,
    50000 + 150 * x + FLOOR(RANDOM() * 10000) AS price
FROM generate_series(500, 2000, 100) AS x;

-- (Optional) Verify the data insertion
SELECT * FROM houses;
