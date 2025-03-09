-- linear_regression.sql
-- This script calculates the slope and intercept of a linear regression model
-- predicting 'price' based on 'square_footage' from the houses dataset.

WITH stats AS (
    SELECT
        COUNT(*) AS n,
        SUM(square_footage) AS sum_x,
        SUM(price) AS sum_y,
        SUM(square_footage * square_footage) AS sum_x2,
        SUM(square_footage * price) AS sum_xy
    FROM houses
)
SELECT
    n,
    sum_x,
    sum_y,
    sum_x2,
    sum_xy,
    -- Calculate the slope:
    (n * sum_xy - sum_x * sum_y) * 1.0 / (n * sum_x2 - sum_x * sum_x) AS slope,
    -- Calculate the intercept:
    (sum_y - ((n * sum_xy - sum_x * sum_y) * 1.0 / (n * sum_x2 - sum_x * sum_x)) * sum_x) / n AS intercept
FROM stats;
