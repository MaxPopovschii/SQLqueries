DELIMITER $$

CREATE TRIGGER LogActivityInsertion
AFTER INSERT ON activities
FOR EACH ROW
BEGIN
    INSERT INTO activity_logs (user_id, activity_type, log_date)
    VALUES (NEW.user_id, NEW.activity_type, NOW());
END $$

DELIMITER ;
