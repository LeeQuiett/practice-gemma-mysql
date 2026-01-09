/*
[질문]
관리자(manager_id)보다 높은 급여(salary)를 받는 직원 이름(name)을 조회하는 SQL 쿼리를 작성합니다.
*/

# [SETTING 1]
USE practice;
DROP TABLE employee;
CREATE TABLE employee
(
    emp_id     INT,
    name       VARCHAR(255),
    salary     INT,
    manager_id INT,
    PRIMARY KEY(emp_id)
);
INSERT INTO employee (emp_id, name, salary, manager_id)
VALUES (1, 'Joe', 70000, 3),
    (2, 'Henry', 80000, 4),
    (3, 'Sam', 60000, NULL),
    (4, 'Max', 90000, NULL);
SELECT *
FROM employee;

SELECT e.a_name
FROM (
SELECT 
a.emp_id as a_emp_id,
a.name as a_name,
a.salary as a_salay,
a.manager_id as a_manager,
b.emp_id,
b.name,
b.salary,
b.manager_id
FROM employee AS a
INNER JOIN employee AS b
ON a.manager_id = b.emp_id
HAVING a_salay > salary
) AS e;

SELECT 
a.emp_id as a_emp_id,
a.name as a_name,
a.salary as a_salay,
a.manager_id as a_manager,
b.emp_id,
b.name,
b.salary,
b.manager_id
FROM employee AS a
INNER JOIN employee AS b
ON a.manager_id = b.emp_id
HAVING a_salay > salary;

SELECT *
FROM employee;

# [SETTING 2]
USE practice;
DROP TABLE employee;
CREATE TABLE employee
(
    emp_id         INT,
    name           VARCHAR(255),
    salary         INT,
    manager_id     INT,
    PRIMARY KEY(emp_id)
);
INSERT INTO employee (emp_id, name, salary, manager_id)
VALUES (1, 'Mark', 40000, 3),
    (2, 'Alan', 20000, NULL),
    (3, 'Jack', 30000, 2);
SELECT *
FROM employee;
