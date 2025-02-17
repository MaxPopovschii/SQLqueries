DELIMITER $$

CREATE PROCEDURE CalculateTotalEcoFootprint(IN user_id INT)
BEGIN
    DECLARE total_footprint INT;

    SELECT SUM(eco_footprint) INTO total_footprint
    FROM activities
    WHERE user_id = user_id;

    SELECT total_footprint AS total_eco_footprint;
END $$

DELIMITER ;
