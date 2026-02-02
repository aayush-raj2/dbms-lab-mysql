-- Experiment 01: DDL and DML Commands

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30)
);

INSERT INTO department VALUES
(1, 'CSE'),
(2, 'ECE'),
(3, 'IT');

UPDATE student
SET age = 22
WHERE sid = 1;

DELETE FROM student
WHERE sid = 2;
