-- Subquery
SELECT * FROM student
WHERE age > (SELECT AVG(age) FROM student);

-- Inner Join
CREATE TABLE employee (
    emp_id INT,
    emp_name VARCHAR(50),
    dept VARCHAR(20),
    salary INT
);

INSERT INTO employee VALUES
(101,'Raj','CSE',40000),
(102,'Ram','ECE',30000);

SELECT s.name, e.salary
FROM student s
INNER JOIN employee e
ON s.dept = e.dept;

-- View
CREATE VIEW cse_students AS
SELECT name FROM student WHERE dept='CSE';

SELECT * FROM cse_students;
