
-- 1. Find Users Who Have Logged Activities in the Last Week
SELECT * FROM users
WHERE user_id IN (
    SELECT user_id FROM activities
    WHERE activity_date >= CURDATE() - INTERVAL 7 DAY
);

-- 2. Update the Eco-Footprint Value for a Specific User
UPDATE users
SET eco_footprint = eco_footprint + 5
WHERE user_id = 123;

-- 3. Get the Total Eco-Footprint by Activity Type
SELECT activity_type, SUM(eco_footprint) AS total_footprint
FROM activities
GROUP BY activity_type;

-- 4. Get Users Who Have Not Logged Activities in the Last Month
SELECT * FROM users
WHERE user_id NOT IN (
    SELECT user_id FROM activities
    WHERE activity_date >= CURDATE() - INTERVAL 1 MONTH
);

-- 5. Delete Old Activity Records (More than 1 Year Old)
DELETE FROM activities
WHERE activity_date < CURDATE() - INTERVAL 1 YEAR;

-- 6. Get Average Eco-Footprint per User
SELECT user_id, AVG(eco_footprint) AS avg_footprint
FROM activities
GROUP BY user_id;

-- 7. Join User and Activity Data to Show User Details with Their Activity Logs
SELECT users.user_id, users.username, activities.activity_type, activities.activity_date
FROM users
JOIN activities ON users.user_id = activities.user_id
ORDER BY activities.activity_date DESC;

-- 8. Find the User with the Highest Eco-Footprint
SELECT user_id, MAX(eco_footprint) AS max_footprint
FROM users;

-- 9. Track Eco-Footprint Changes by User Over Time
SELECT user_id, activity_date, eco_footprint
FROM activities
WHERE user_id = 123
ORDER BY activity_date;

-- 10. Get Activity Count by Month for a Specific User
SELECT MONTH(activity_date) AS month, COUNT(*) AS activity_count
FROM activities
WHERE user_id = 123
GROUP BY MONTH(activity_date)
ORDER BY month;



