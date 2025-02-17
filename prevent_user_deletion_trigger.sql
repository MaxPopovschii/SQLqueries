DELIMITER $$

CREATE TRIGGER PreventUserDeletion
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
    DECLARE activity_count INT;
    SELECT COUNT(*) INTO activity_count
    FROM activities
    WHERE user_id = OLD.user_id;

    IF activity_count > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot delete user with logged activities.';
    END IF;
END $$

DELIMITER ;
