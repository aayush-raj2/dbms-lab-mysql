-- TCL
START TRANSACTION;

INSERT INTO student VALUES (5,'Sita',20,'CSE');

SAVEPOINT sp1;

UPDATE student SET age = 24 WHERE sid = 3;

ROLLBACK TO sp1;

COMMIT;

-- DCL
GRANT SELECT ON student TO 'user1'@'localhost';
REVOKE SELECT ON student FROM 'user1'@'localhost';
