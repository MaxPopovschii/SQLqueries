DELIMITER $$

CREATE PROCEDURE UpdateEcoFootprint(IN user_id INT, IN footprint_increment INT)
BEGIN
    UPDATE users
    SET eco_footprint = eco_footprint + footprint_increment
    WHERE user_id = user_id;
END $$

DELIMITER ;
