-- Uber Trip Data Dashboard Queries with Insights

-- 1. Total Bookings
SELECT COUNT(*) AS total_bookings
FROM uber_trips;
/*
💡 Total bookings reached approximately 103,700 trips, indicating strong user engagement.
*/

-- 2. Total Booking Value (Fare + Surge)
SELECT SUM(fare_amount + surge_fee) AS total_booking_value
FROM uber_trips;
/*
💡 The total revenue from bookings amounts to around $1.6 million.
*/

-- 3. Average Booking Value
SELECT AVG(fare_amount + surge_fee) AS avg_booking_value
FROM uber_trips;
/*
💡 On average, each trip generates about $15 in booking value.
*/

-- 4. Total Trip Distance
SELECT SUM(trip_distance) AS total_trip_distance
FROM uber_trips;
/*
💡 Combined trip distances sum to approximately 349,000 miles.
*/

-- 5. Average Trip Distance
SELECT AVG(trip_distance) AS avg_trip_distance
FROM uber_trips;
/*
💡 The typical trip length is roughly 3 miles.
*/

-- 6. Average Trip Time (in minutes)
SELECT AVG(EXTRACT(EPOCH FROM (dropoff_time - pickup_time)) / 60) AS avg_trip_time_minutes
FROM uber_trips;
/*
💡 Average trip duration is around 16 minutes, reflecting typical urban travel times.
*/

-- 7. Total Booking Value by Payment Type
SELECT payment_type,
       SUM(fare_amount + surge_fee) AS total_booking_value
FROM uber_trips
GROUP BY payment_type
ORDER BY total_booking_value DESC;
/*
💡 Uber Pay dominates payments, representing 70% of total booking value, followed by Cash at 28%, with other methods like Amazon Pay contributing marginally.
*/

-- 8. Total Booking Value by Trip Time (Day/Night)
SELECT CASE 
         WHEN EXTRACT(HOUR FROM pickup_time) BETWEEN 6 AND 17 THEN 'Day'
         ELSE 'Night'
       END AS trip_time,
       SUM(fare_amount + surge_fee) AS total_booking_value
FROM uber_trips
GROUP BY trip_time
ORDER BY trip_time;
/*
💡 Daytime trips account for nearly 63% of booking value, highlighting higher demand during daylight hours.
*/

-- 9. Vehicle Type Analysis (combined metrics)
SELECT
    vehicle,
    COUNT(*) AS total_bookings,
    SUM(fare_amount + surge_fee) AS total_booking_value,
    AVG(fare_amount + surge_fee) AS avg_booking_value,
    SUM(trip_distance) AS total_trip_distance
FROM uber_trips
GROUP BY vehicle
ORDER BY total_booking_value DESC;
/*
💡 UBER X leads with the highest bookings (~387k), contributing $583,880 in revenue, an average booking value of $15, and covering 131,496 miles; other popular options include UBER COMFORT, UBER BLACK, UBER XL, and UBER GREEN.
*/

-- 10. Total Bookings by Pickup Location (Top 10)
SELECT pu_location_id,
       COUNT(*) AS total_bookings
FROM uber_trips
GROUP BY pu_location_id
ORDER BY total_bookings DESC
LIMIT 10;
/*
💡 Key pickup hotspots are Penn Station, Madison Square West, and Upper East Side North with roughly 4,500 bookings each; Upper East Side South follows with about 4,100.
*/

-- 11. Most Preferred Vehicle by Pickup Location
SELECT pu_location_id,
       vehicle,
       COUNT(*) AS total_bookings
FROM uber_trips
GROUP BY pu_location_id, vehicle
ORDER BY pu_location_id, total_bookings DESC;
/*
💡 Uber X is the top choice across pickup locations (~39k bookings), followed by Uber Comfort, Uber Black, Uber XL (~17k each), and Uber Green (~14k).
*/

-- 12. Total Bookings by Pickup Date
SELECT DATE(pickup_time) AS pickup_date,
       COUNT(*) AS total_bookings
FROM uber_trips
GROUP BY pickup_date
ORDER BY pickup_date;
/*
💡 The highest booking volume peaks at 15:30 with 1,396 trips, while the lowest is early morning at 04:20 with just 38 trips.
*/

-- 13. Total Bookings by Pickup Hour and Day of Week
SELECT EXTRACT(DOW FROM pickup_time) AS day_of_week,
       EXTRACT(HOUR FROM pickup_time) AS pickup_hour,
       COUNT(*) AS total_bookings
FROM uber_trips
GROUP BY day_of_week, pickup_hour
ORDER BY day_of_week, pickup_hour;
/*
💡 Sundays see the highest weekly demand (~19.2k bookings), followed closely by Saturdays (~18.7k), with Fridays experiencing the lowest activity (~9.3k).
*/
