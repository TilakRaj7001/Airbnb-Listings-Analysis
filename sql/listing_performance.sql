
-- 1. Listings receiving the most reviews

-- Find the top 10 listings based on total reviews

SELECT
    id,
    host_name,
    neighbourhood_cleansed,
    room_type,
    number_of_reviews
FROM listings_cleaned
WHERE number_of_reviews IS NOT NULL
ORDER BY number_of_reviews DESC
LIMIT 10;


-- 2. Neighbourhoods with better ratings

-- Calculate the average rating for each neighbourhood and Room types with better ratings

SELECT
    neighbourhood_cleansed,
    ROUND(AVG(review_scores_rating), 2) AS average_rating,
    COUNT(*) AS total_listings
FROM listings_cleaned
WHERE review_scores_rating IS NOT NULL
GROUP BY neighbourhood_cleansed
HAVING COUNT(*) >= 10
ORDER BY average_rating DESC
LIMIT 10;

-- Compare average ratings across different room types

SELECT
    room_type,
    ROUND(AVG(review_scores_rating), 2) AS average_rating,
    COUNT(*) AS total_listings
FROM listings_cleaned
WHERE review_scores_rating IS NOT NULL
GROUP BY room_type
ORDER BY average_rating DESC;


-- 3.Price vs Rating and Reviews

-- Compare average price, rating and reviews
-- for each room type

SELECT
    room_type,

    -- Average price of the room type
    ROUND(AVG(price), 2) AS average_price,

    -- Average rating of the room type
    ROUND(AVG(review_scores_rating), 2) AS average_rating,

    -- Average number of reviews
    ROUND(AVG(number_of_reviews), 2) AS average_reviews,

    -- Total number of listings
    COUNT(*) AS total_listings

FROM listings_cleaned

-- Ignore records where price, rating or reviews are missing
WHERE price IS NOT NULL
  AND review_scores_rating IS NOT NULL
  AND number_of_reviews IS NOT NULL

-- Group the results by room type
GROUP BY room_type

-- Show the most expensive room type first
ORDER BY average_price DESC;