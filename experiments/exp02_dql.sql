USE dbms_lab;

CREATE TABLE student (
    sid INT,
    name VARCHAR(50),
    age INT,
    dept VARCHAR(20)
);

INSERT INTO student VALUES
(1,'Arun',20,'CSE'),
(2,'Ravi',22,'ECE'),
(3,'Anita',21,'CSE'),
(4,'Meena',23,'IT');

-- SELECT
SELECT * FROM student;

-- WHERE
SELECT * FROM student WHERE age > 21;

-- LIKE
SELECT * FROM student WHERE name LIKE 'A%';

-- ORDER BY
SELECT * FROM student ORDER BY age;

-- DISTINCT
SELECT DISTINCT dept FROM student;

-- GROUP BY + HAVING
SELECT dept, COUNT(*) 
FROM student 
GROUP BY dept 
HAVING COUNT(*) > 1;
