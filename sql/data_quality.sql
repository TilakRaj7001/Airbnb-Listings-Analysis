-- Check total rows in dataset 
SELECT COUNT(*) AS total_rows
FROM listings_cleaned;
 
-- Find NULL / Missing Values 
Select 
SUM(
 id IS NULL)
 AS id ,
SUM(
 scrape_id IS NULL)
 AS scrape_id ,
SUM( 
last_scraped IS NULL)
AS last_scraped ,
SUM(
 source IS NULL)
 AS source ,
SUM( 
host_id IS NULL)
AS host_id ,
SUM( 
host_name IS NULL)
AS host_name ,
SUM( 
hosts_time_as_user_years IS NULL)
AS hosts_time_as_user_years ,
SUM(
 hosts_time_as_user_months IS NULL)
 AS hosts_time_as_user_months ,
SUM(
 hosts_time_as_host_years IS NULL)
 AS hosts_time_as_host_years ,
SUM(
 hosts_time_as_host_months IS NULL)
 AS hosts_time_as_host_months ,
SUM( 
host_is_superhost IS NULL)
AS host_is_superhost ,
SUM(
 host_listings_count IS NULL)
 AS host_listings_count ,
SUM(
 host_identity_verified IS NULL)
 AS host_identity_verified ,
SUM(
 neighbourhood_cleansed IS NULL)
 AS neighbourhood_cleansed ,
SUM(
 neighbourhood_group_cleansed IS NULL)
 AS neighbourhood_group_cleansed ,
SUM( 
latitude IS NULL)
AS latitude ,
SUM(
 longitude IS NULL)
 AS longitude ,
SUM(
 property_type IS NULL)
 AS property_type ,
SUM(
room_type IS NULL)
AS room_type ,
SUM( 
accommodates IS NULL)
AS accommodates ,
SUM(
 bathrooms IS NULL)
 AS bathrooms ,
SUM(
 bathrooms_text IS NULL)
 AS bathrooms_text ,
SUM( 
bedrooms IS NULL)
AS bedrooms ,
SUM(
 beds IS NULL)
 AS beds ,
SUM(
 amenities IS NULL)
 AS amenities ,
SUM( 
price IS NULL)
AS price ,
SUM(
 number_of_reviews IS NULL)
 AS number_of_reviews ,
SUM(
 number_of_reviews_ltm IS NULL)
 AS number_of_reviews_ltm ,
SUM(
 number_of_reviews_l30d IS NULL)
 AS number_of_reviews_l30d ,
SUM( 
number_of_reviews_ly IS NULL)
AS number_of_reviews_ly ,
SUM(
 estimated_occupancy_l365d IS NULL)
 AS estimated_occupancy_l365d ,
SUM( 
estimated_revenue_l365d IS NULL)
AS estimated_revenue_l365d ,
SUM( 
first_review IS NULL)
AS first_review ,
SUM(
 last_review IS NULL)
 AS last_review ,
SUM(
 review_scores_rating IS NULL)
 AS review_scores_rating ,
SUM(
 review_scores_accuracy IS NULL)
 AS review_scores_accuracy ,
SUM(
 review_scores_cleanliness IS NULL)
 AS review_scores_cleanliness ,
SUM(
 review_scores_checkin IS NULL)
 AS review_scores_checkin ,
SUM(
 review_scores_communication IS NULL)
 AS review_scores_communication ,
SUM( 
review_scores_location IS NULL)
AS review_scores_location ,
SUM(
 review_scores_value IS NULL)
 AS review_scores_value ,
SUM(
 calculated_host_listings_count_entire_homes IS NULL)
 AS calculated_host_listings_count_entire_homes ,
SUM( 
calculated_host_listings_count_private_rooms IS NULL)
AS calculated_host_listings_count_private_rooms ,
SUM( 
calculated_host_listings_count_shared_rooms IS NULL)
AS calculated_host_listings_count_shared_rooms ,
SUM( 
reviews_per_month IS NULL)
AS reviews_per_month 
from listings_cleaned ;



Select 
SUM(
 id IS NULL)
 AS id ,
SUM(
 scrape_id IS NULL)
 AS scrape_id ,
SUM( 
last_scraped IS NULL)
AS last_scraped ,
SUM(
 source IS NULL)
 AS source ,
SUM( 
host_id IS NULL)
AS host_id ,
SUM( 
host_name IS NULL)
AS host_name ,
SUM( 
hosts_time_as_user_years IS NULL)
AS hosts_time_as_user_years ,
SUM(
 hosts_time_as_user_months IS NULL)
 AS hosts_time_as_user_months ,
SUM(
 hosts_time_as_host_years IS NULL)
 AS hosts_time_as_host_years ,
SUM(
 hosts_time_as_host_months IS NULL)
 AS hosts_time_as_host_months ,
SUM( 
host_is_superhost IS NULL)
AS host_is_superhost ,
SUM(
 host_listings_count IS NULL)
 AS host_listings_count ,
SUM(
 host_identity_verified IS NULL)
 AS host_identity_verified ,
SUM(
 neighbourhood_cleansed IS NULL)
 AS neighbourhood_cleansed ,
SUM(
 neighbourhood_group_cleansed IS NULL)
 AS neighbourhood_group_cleansed ,
SUM( 
latitude IS NULL)
AS latitude ,
SUM(
 longitude IS NULL)
 AS longitude ,
SUM(
 property_type IS NULL)
 AS property_type ,
SUM(
room_type IS NULL)
AS room_type ,
SUM( 
accommodates IS NULL)
AS accommodates ,
SUM(
 bathrooms IS NULL)
 AS bathrooms ,
SUM(
 bathrooms_text IS NULL)
 AS bathrooms_text ,
SUM( 
bedrooms IS NULL)
AS bedrooms ,
SUM(
 beds IS NULL)
 AS beds ,
SUM(
 amenities IS NULL)
 AS amenities ,
SUM( 
price IS NULL)
AS price ,
SUM(
 number_of_reviews IS NULL)
 AS number_of_reviews ,
SUM(
 number_of_reviews_ltm IS NULL)
 AS number_of_reviews_ltm ,
SUM(
 number_of_reviews_l30d IS NULL)
 AS number_of_reviews_l30d ,
SUM( 
number_of_reviews_ly IS NULL)
AS number_of_reviews_ly ,
SUM(
 estimated_occupancy_l365d IS NULL)
 AS estimated_occupancy_l365d ,
SUM( 
estimated_revenue_l365d IS NULL)
AS estimated_revenue_l365d ,
SUM( 
first_review IS NULL)
AS first_review ,
SUM(
 last_review IS NULL)
 AS last_review ,
SUM(
 review_scores_rating IS NULL)
 AS review_scores_rating ,
SUM(
 review_scores_accuracy IS NULL)
 AS review_scores_accuracy ,
SUM(
 review_scores_cleanliness IS NULL)
 AS review_scores_cleanliness ,
SUM(
 review_scores_checkin IS NULL)
 AS review_scores_checkin ,
SUM(
 review_scores_communication IS NULL)
 AS review_scores_communication ,
SUM( 
review_scores_location IS NULL)
AS review_scores_location ,
SUM(
 review_scores_value IS NULL)
 AS review_scores_value ,
SUM(
 calculated_host_listings_count_entire_homes IS NULL)
 AS calculated_host_listings_count_entire_homes ,
SUM( 
calculated_host_listings_count_private_rooms IS NULL)
AS calculated_host_listings_count_private_rooms ,
SUM( 
calculated_host_listings_count_shared_rooms IS NULL)
AS calculated_host_listings_count_shared_rooms ,
SUM( 
reviews_per_month IS NULL)
AS reviews_per_month 
from listings_cleaned ;


-- Find NULL/ Missing Values in Percentage 
Select 
ROUND( SUM(
 id IS NULL)* 100.0 / COUNT(*), 2)
 AS id ,
ROUND( SUM(
 scrape_id IS NULL)* 100.0 / COUNT(*), 2)
 AS scrape_id ,
ROUND( SUM( 
last_scraped IS NULL)* 100.0 / COUNT(*), 2)
AS last_scraped ,
ROUND( SUM(
 source IS NULL)* 100.0 / COUNT(*), 2)
 AS source ,
ROUND( SUM( 
host_id IS NULL)* 100.0 / COUNT(*), 2)
AS host_id ,
ROUND( SUM( 
host_name IS NULL)* 100.0 / COUNT(*), 2)
AS host_name ,
ROUND( SUM( 
hosts_time_as_user_years IS NULL)* 100.0 / COUNT(*), 2)
AS hosts_time_as_user_years ,
ROUND( SUM(
 hosts_time_as_user_months IS NULL)* 100.0 / COUNT(*), 2)
 AS hosts_time_as_user_months ,
ROUND( SUM(
 hosts_time_as_host_years IS NULL)* 100.0 / COUNT(*), 2)
 AS hosts_time_as_host_years ,
ROUND( SUM(
 hosts_time_as_host_months IS NULL)* 100.0 / COUNT(*), 2)
 AS hosts_time_as_host_months ,
ROUND( SUM( 
host_is_superhost IS NULL)* 100.0 / COUNT(*), 2)
AS host_is_superhost ,
ROUND( SUM(
 host_listings_count IS NULL)* 100.0 / COUNT(*), 2)
 AS host_listings_count ,
ROUND( SUM(
 host_identity_verified IS NULL)* 100.0 / COUNT(*), 2)
 AS host_identity_verified ,
ROUND( SUM(
 neighbourhood_cleansed IS NULL)* 100.0 / COUNT(*), 2)
 AS neighbourhood_cleansed ,
ROUND( SUM(
 neighbourhood_group_cleansed IS NULL)* 100.0 / COUNT(*), 2)
 AS neighbourhood_group_cleansed ,
ROUND( SUM( 
latitude IS NULL)* 100.0 / COUNT(*), 2)
AS latitude ,
ROUND( SUM(
 longitude IS NULL)* 100.0 / COUNT(*), 2)
 AS longitude ,
ROUND( SUM(
 property_type IS NULL)* 100.0 / COUNT(*), 2)
 AS property_type ,
ROUND( SUM(
room_type IS NULL)* 100.0 / COUNT(*), 2)
AS room_type ,
ROUND( SUM( 
accommodates IS NULL)* 100.0 / COUNT(*), 2)
AS accommodates ,
ROUND( SUM(
 bathrooms IS NULL)* 100.0 / COUNT(*), 2)
 AS bathrooms ,
ROUND( SUM(
 bathrooms_text IS NULL)* 100.0 / COUNT(*), 2)
 AS bathrooms_text ,
ROUND( SUM( 
bedrooms IS NULL)* 100.0 / COUNT(*), 2)
AS bedrooms ,
ROUND( SUM(
 beds IS NULL)* 100.0 / COUNT(*), 2)
 AS beds ,
ROUND( SUM(
 amenities IS NULL)* 100.0 / COUNT(*), 2)
 AS amenities ,
ROUND( SUM( 
price IS NULL)* 100.0 / COUNT(*), 2)
AS price ,
ROUND( SUM(
 number_of_reviews IS NULL)* 100.0 / COUNT(*), 2)
 AS number_of_reviews ,
ROUND( SUM(
 number_of_reviews_ltm IS NULL)* 100.0 / COUNT(*), 2)
 AS number_of_reviews_ltm ,
ROUND( SUM(
 number_of_reviews_l30d IS NULL)* 100.0 / COUNT(*), 2)
 AS number_of_reviews_l30d ,
ROUND( SUM( 
number_of_reviews_ly IS NULL)* 100.0 / COUNT(*), 2)
AS number_of_reviews_ly ,
ROUND( SUM(
 estimated_occupancy_l365d IS NULL)* 100.0 / COUNT(*), 2)
 AS estimated_occupancy_l365d ,
ROUND( SUM( 
estimated_revenue_l365d IS NULL)* 100.0 / COUNT(*), 2)
AS estimated_revenue_l365d ,
ROUND( SUM( 
first_review IS NULL)* 100.0 / COUNT(*), 2)
AS first_review ,
ROUND( SUM(
 last_review IS NULL)* 100.0 / COUNT(*), 2)
 AS last_review ,
ROUND( SUM(
 review_scores_rating IS NULL)* 100.0 / COUNT(*), 2)
 AS review_scores_rating ,
ROUND( SUM(
 review_scores_accuracy IS NULL)* 100.0 / COUNT(*), 2)
 AS review_scores_accuracy ,
ROUND( SUM(
 review_scores_cleanliness IS NULL)* 100.0 / COUNT(*), 2)
 AS review_scores_cleanliness ,
ROUND( SUM(
 review_scores_checkin IS NULL)* 100.0 / COUNT(*), 2)
 AS review_scores_checkin ,
ROUND( SUM(
 review_scores_communication IS NULL)* 100.0 / COUNT(*), 2)
 AS review_scores_communication ,
ROUND( SUM( 
review_scores_location IS NULL)* 100.0 / COUNT(*), 2)
AS review_scores_location ,
ROUND( SUM(
 review_scores_value IS NULL)* 100.0 / COUNT(*), 2)
 AS review_scores_value ,
ROUND( SUM(
 calculated_host_listings_count_entire_homes IS NULL)* 100.0 / COUNT(*), 2)
 AS calculated_host_listings_count_entire_homes ,
ROUND( SUM( 
calculated_host_listings_count_private_rooms IS NULL)* 100.0 / COUNT(*), 2)
AS calculated_host_listings_count_private_rooms ,
ROUND( SUM( 
calculated_host_listings_count_shared_rooms IS NULL)* 100.0 / COUNT(*), 2)
AS calculated_host_listings_count_shared_rooms ,
ROUND( SUM( 
reviews_per_month IS NULL)* 100.0 / COUNT(*), 2)
AS reviews_per_month 
from listings_cleaned ;

-- Find duplicate rows
SELECT
    listing_id,
    COUNT(*) AS duplicate_count
FROM listings
GROUP BY listing_id
HAVING COUNT(*) > 1;

-- Find Invalid ratings 
SELECT *
FROM listings_cleaned
WHERE review_scores_rating < 0
   OR review_scores_rating > 5;
   
-- Find Invalid room types
SELECT DISTINCT room_type
FROM listings_cleaned;

-- Find Invalid neighbourhood 
SELECT *
FROM listings_cleaned
WHERE neighbourhood_cleansed IS NULL
   OR TRIM(neighbourhood_cleansed) = '';
