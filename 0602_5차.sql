SELECT
    department_id
FROM employees
UNION 
SELECT
    department_id
FROM departments;

SELECT
    department_id
FROM employees
UNION ALL
SELECT
    department_id
FROM departments;

SELECT
    department_id
FROM employees
INTERSECT
SELECT
    department_id
FROM departments;


SELECT
    *
FROM employees A
WHERE a.salary = (SELECT salary
                  FROM employees
                  where last_name = 'De Haan');

--���� �ڵ�� ������ ����� ��µ�
SELECT
    *
FROM employees A
WHERE a.salary = 17000;


SELECT
    *
FROM employees A
WHERE a.salary = (SELECT salary
                  FROM employees
                  where last_name = 'Taylor');

SELECT
    *
FROM employees A
WHERE a.salary IN (SELECT salary
                  FROM employees
                  where last_name = 'Taylor');


SELECT *
FROM employees A
where a.salary IN(SELECT MIN(salary) �����޿�
                    FROM employees
                    GROUP BY department_id)
ORDER BY a.salary desc;


SELECT *
FROM employees A
where (a.job_id, a.salary) IN(
                            SELECT job_id,MIN(salary) �׷캰_�޿�
                            FROM employees
                            GROUP BY job_id)
ORDER BY a.salary desc;


SELECT *
FROM employees A,
                (SELECT department_id 
                FROM departments
                where department_name = 'IT'
                )B -- B�� �����(�ζ��κ�)�����
where a.department_id = b.department_id;   


INSERT INTO departments (department_id,department_name,manager_id,location_id)
VALUES (271,'Sample_Dept',200,1700);


SELECT
    *
FROM departments
ORDER BY department_id desc;

INSERT INTO departments
values(271,'Sample_Dept',200,1700);

commit;

UPDATE departments
set manager_id = 201,
    location_id = 1800
where department_name = 'Sample_Dept';






