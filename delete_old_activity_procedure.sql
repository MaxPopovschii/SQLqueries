DELIMITER $$

CREATE PROCEDURE DeleteOldActivities(IN months INT)
BEGIN
    DELETE FROM activities
    WHERE activity_date < CURDATE() - INTERVAL months MONTH;
END $$

DELIMITER ;
