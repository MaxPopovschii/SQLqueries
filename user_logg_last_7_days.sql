SELECT * FROM users
WHERE user_id IN (
    SELECT user_id FROM activities
    WHERE activity_date >= CURDATE() - INTERVAL 7 DAY
);
