SELECT
    COUNT(salary)
FROM employees;

SELECT
    sum(salary),
    AVG(salary),
    SUM(salary)/COUNT(salary)
FROM employees;

SELECT
    MIN(salary) 최대값,
    MAX(salary) 최소값,
    MAX(first_name) 최대문자값,
    MIN(first_name) 최소문자값
FROM employees;


SELECT
    job_id job_id_대그룹,
    manager_id manager_id_중그룹,
    SUM(salary) 그룹별_총급여,
    avg(salary) 그룹별_평균급여
FROM employees
WHERE employee_id >=10
group by job_id, manager_id
order by 그룹별_총급여 desc, 그룹별_평균급여;


SELECT
    job_id 직무,
    SUM(salary) 직무별_총급여,
    avg(salary) 직무별_평균급여
FROM employees
WHERE employee_id >=10
group by job_id
having sum(salary)>30000
order by 직무별_총급여 desc, 직무별_평균급여;

SELECT
    a.first_name,a.last_name,b.*
FROM employees a, job_history b
where a.employee_id = b.employee_id
and a.employee_id = 101;


SELECT
    *
FROM employees A,departments B
where a.department_id = b.department_id;


SELECT
    a.employee_id,a.department_id,b.department_name,c.location_id,c.city
FROM employees A, departments B, locations C
where a.department_id = b.department_id
and b.location_id=c.location_id; 

SELECT
    COUNT(*) 조인된건수
FROM employees A, departments B
where a.department_id = b.department_id;


SELECT
    COUNT(*)
FROM employees;

SELECT
    a.department_id, a.first_name, a.last_name, b.department_id,b.department_name
FROM employees A, departments B
where a.department_id = b.department_id(+)
order by a.employee_id;


SELECT
    a.department_id, a.first_name, a.last_name, b.department_id,b.department_name
FROM employees A, departments B
where a.department_id(+) = b.department_id
order by a.employee_id;


SELECT
    a.employee_id, a.first_name,a.last_name, a.manager_id,
    b.first_name||' '||b.last_name manager_name
FROM employees A, employees B
where a.manager_id = b.employee_id
order by a.employee_id;



