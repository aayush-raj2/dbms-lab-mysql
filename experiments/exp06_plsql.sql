DELIMITER $$

-- Procedure
CREATE PROCEDURE add_bonus(IN eid INT)
BEGIN
    UPDATE employee
    SET salary = salary + 5000
    WHERE emp_id = eid;
END$$

-- Function
CREATE FUNCTION square(n INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN n*n;
END$$

-- Trigger
CREATE TRIGGER salary_check
BEFORE INSERT ON employee
FOR EACH ROW
BEGIN
    IF NEW.salary < 10000 THEN
        SET NEW.salary = 10000;
    END IF;
END$$

DELIMITER ;

CALL add_bonus(101);
SELECT square(5);
