
-- 1. New Host Opportunity in NYC


-- Find the best neighbourhood + room type
-- based on good ratings, reviews and reasonable price

SELECT
    neighbourhood_cleansed,
    room_type,

    -- Average price
    ROUND(AVG(price), 2) AS average_price,

    -- Average rating
    ROUND(AVG(review_scores_rating), 2) AS average_rating,

    -- Average number of reviews
    ROUND(AVG(number_of_reviews), 2) AS average_reviews

FROM listings_cleaned

-- Remove records with missing values
WHERE price IS NOT NULL
  AND review_scores_rating IS NOT NULL
  AND number_of_reviews IS NOT NULL

-- Compare neighbourhood and room type
GROUP BY
    neighbourhood_cleansed,
    room_type

-- Consider areas with at least 10 listings
HAVING COUNT(*) >= 10

-- Show highly rated options with good review activity
ORDER BY
    average_rating DESC,
    average_reviews DESC

LIMIT 10;