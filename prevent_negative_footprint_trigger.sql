DELIMITER $$

CREATE TRIGGER PreventNegativeEcoFootprint
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF NEW.eco_footprint < 0 THEN
        SET NEW.eco_footprint = 0;
    END IF;
END $$

DELIMITER ;
