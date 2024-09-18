DELIMITER //

CREATE TRIGGER update_assign_status
AFTER UPDATE ON students
FOR EACH ROW
BEGIN
	IF YEAR(NEW.stu_Separation_date) <= 2024 THEN
		UPDATE students
        SET NEW.stu_status = 'NOT ACTIVE'
        WHERE stu_id = NEW.stu_id;
	END IF;
END;
//

DELIMITER ;