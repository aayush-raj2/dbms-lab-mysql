σ Dept='CSE'(STUDENT)
→ SELECT * FROM student WHERE dept='CSE';

π Name, Dept(STUDENT)
→ SELECT DISTINCT name, dept FROM student;

STUDENT ⨝ ENROLLMENT
→ SELECT * FROM student 
JOIN enrollment ON student.sid = enrollment.sid;

{ t.name | STUDENT(t) ∧ t.dept='CSE' }
