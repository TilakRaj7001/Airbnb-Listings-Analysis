-- 1. Which neighbourhoods have the most listings?

-- Count listings for each neighbourhood
SELECT 
    neighbourhood_cleansed,
    COUNT(*) AS total_listings
FROM listings_cleaned
GROUP BY neighbourhood_cleansed
ORDER BY total_listings DESC
LIMIT 10;



-- 2. Which room types dominate the market?

-- Count listings for each room type
SELECT 
    room_type,
    COUNT(*) AS total_listings
FROM listings_cleaned
GROUP BY room_type
ORDER BY total_listings DESC;


-- 3. How is the market distributed geographically?

-- Count listings by geographical area
SELECT 
    neighbourhood_group_cleansed,
    COUNT(*) AS total_listings
FROM listings_cleaned
GROUP BY neighbourhood_group_cleansed
ORDER BY total_listings DESC;