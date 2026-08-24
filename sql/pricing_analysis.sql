
-- 1. Average price by neighbourhood and room type

-- Calculate average price for each neighbourhood and room type
SELECT
    neighbourhood_cleansed,
    room_type,
    ROUND(AVG(price), 2) AS average_price
FROM listings_cleaned
WHERE price IS NOT NULL
GROUP BY
    neighbourhood_cleansed,
    room_type
ORDER BY average_price DESC;


-- 2. Which neighbourhoods are expensive?

-- Calculate average price for each neighbourhood
SELECT
    neighbourhood_cleansed,
    ROUND(AVG(price), 2) AS average_price
FROM listings_cleaned
WHERE price IS NOT NULL
GROUP BY neighbourhood_cleansed
ORDER BY average_price DESC
LIMIT 10;


-- 3. Identify unusual/extreme prices

-- Find listings whose price is more than 3 times
-- the overall average price

SELECT
    id,
    neighbourhood_cleansed,
    room_type,
    price
FROM listings_cleaned
WHERE price > (
    SELECT AVG(price) * 3
    FROM listings_cleaned
    WHERE price IS NOT NULL
)
ORDER BY price DESC;