
-- 1. Relationship between Neigbourhood and Average Price

SELECT neighbourhood, 
AVG(price) as Average_Price
FROM airbnb_nyc_clean
GROUP BY neighbourhood
ORDER BY Average_Price desc;

-- 2. Average Rating per Neigbourhood

SELECT neighbourhood,
AVG(review_rate_number) as average_review_rate
FROM airbnb_nyc_clean
GROUP BY neighbourhood
ORDER BY average_review_rate DESC;

-- 3. Average Price per Year

SELECT AVG(price) as average_price,
construction_year
FROM airbnb_nyc_clean
GROUP BY construction_year
ORDER BY construction_year DESC;

-- 4. Average Price per Room Type

SELECT AVG(price) as average_price,
room_type
FROM airbnb_nyc_clean
GROUP BY room_type
ORDER BY average_price DESC;

-- 5. Average Rating per Room Type

SELECT AVG(review_rate_number) AS average_rating,
room_type
FROM airbnb_nyc_clean
GROUP BY room_type
ORDER BY average_rating DESC;

-- 6. Room Type vs Cancel Fee

SELECT Room_Type, cancellation_policy, AVG(Service_Fee) AS Average_Service_Fee
FROM airbnb_nyc_clean
GROUP BY Room_Type, cancellation_policy
ORDER BY average_service_fee DESC;