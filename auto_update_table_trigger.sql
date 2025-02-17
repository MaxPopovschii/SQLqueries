DELIMITER $$

CREATE TRIGGER update_eco_footprint_after_insert
AFTER INSERT ON user_activities
FOR EACH ROW
BEGIN
    DECLARE total_footprint DECIMAL(10, 2);

    -- Calculate the new total footprint for the user
    SELECT SUM(footprint_value) INTO total_footprint
    FROM user_activities
    WHERE user_id = NEW.user_id
    GROUP BY user_id;

    -- Update the total footprint in the eco_footprint table
    INSERT INTO eco_footprint (user_id, total_footprint)
    VALUES (NEW.user_id, total_footprint)
    ON DUPLICATE KEY UPDATE total_footprint = total_footprint;
END $$

DELIMITER ;
