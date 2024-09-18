DELIMITER //

CREATE TRIGGER assign_grade
BEFORE INSERT ON performance
FOR EACH ROW
BEGIN
    IF NEW.total_marks >= 90 THEN
        SET NEW.grade = 'A';
    ELSEIF NEW.total_marks >= 80 THEN
        SET NEW.grade = 'B';
    ELSEIF NEW.total_marks >= 60 THEN
        SET NEW.grade = 'C';
    ELSEIF NEW.total_marks >= 50 THEN
        SET NEW.grade = 'D';
	ELSEIF NEW.total_marks >= 30 THEN
        SET NEW.grade = 'E';
    ELSE
        SET NEW.grade = 'F';
    END IF;
END;
//

DELIMITER ;