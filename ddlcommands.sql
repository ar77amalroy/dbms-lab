CREATE TABLE Employee (
  Emp_id INT PRIMARY KEY,
  Emp_name VARCHAR(255) NOT NULL,
  Dept VARCHAR(255) NOT NULL,
  Salary NUMBER(10,2)
);

INSERT INTO Employee VALUES (1, 'David Smith', 'Marketing', 6000);
INSERT INTO Employee VALUES (2, 'Oscar Daniel', 'HR', 7200);
INSERT INTO Employee VALUES (3, 'Charles Brown', 'Sales', 6800);
INSERT INTO Employee VALUES (4, 'Alice Moore', 'Marketing', 7000);
INSERT INTO Employee VALUES (5, 'Andrew Lee', 'Production', 7500);

SELECT * FROM Employee WHERE Salary > 7000;

UPDATE Employee
SET Salary = 8200.00
WHERE Emp_name = 'David Smith';

INSERT INTO Employee (Emp_id, Emp_name, Dept, Salary)
VALUES (6, 'Daniel Harris', 'Production', 6700.00);

DELETE FROM Employee
WHERE Emp_id = 3;

SELECT * FROM Employee
WHERE SUBSTR(Emp_name, 1, 1) NOT IN ('D', 'O');

SELECT Dept, SUM(Salary) AS Total_Salary
FROM Employee
GROUP BY Dept;

UPDATE Employee
SET Salary = Salary * 1.05
WHERE Dept = 'Production';

DELETE FROM Employee
WHERE Salary < 7000;

SELECT Emp_name, Salary
FROM Employee
WHERE Salary = (SELECT MIN(Salary) FROM Employee);

UPDATE Employee
SET Salary = 8200.00
WHERE Dept = 'Marketing';

SELECT Emp_name
FROM Employee
WHERE Emp_name LIKE 'A%';

SELECT Emp_name
FROM Employee
WHERE Emp_name LIKE '%it%';

SELECT DISTINCT UPPER(Dept) AS Department_Upper
FROM Employee;

SELECT *
FROM Employee
WHERE Dept LIKE 'M_r%' AND Dept LIKE '%ket%';

SELECT DISTINCT UPPER(REVERSE(Dept)) AS Reversed_Dept
FROM Employee;
