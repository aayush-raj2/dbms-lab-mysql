START TRANSACTION;

UPDATE employee
SET salary = salary - 2000
WHERE emp_id = 102;

ROLLBACK;

START TRANSACTION;
UPDATE employee SET salary = salary + 3000 WHERE emp_id = 101;
COMMIT;
