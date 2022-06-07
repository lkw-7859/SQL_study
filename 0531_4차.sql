SELECT
    COUNT(salary)
FROM employees;

SELECT
    sum(salary),
    AVG(salary),
    SUM(salary)/COUNT(salary)
FROM employees;

SELECT
    MIN(salary) �ִ밪,
    MAX(salary) �ּҰ�,
    MAX(first_name) �ִ빮�ڰ�,
    MIN(first_name) �ּҹ��ڰ�
FROM employees;


SELECT
    job_id job_id_��׷�,
    manager_id manager_id_�߱׷�,
    SUM(salary) �׷캰_�ѱ޿�,
    avg(salary) �׷캰_��ձ޿�
FROM employees
WHERE employee_id >=10
group by job_id, manager_id
order by �׷캰_�ѱ޿� desc, �׷캰_��ձ޿�;


SELECT
    job_id ����,
    SUM(salary) ������_�ѱ޿�,
    avg(salary) ������_��ձ޿�
FROM employees
WHERE employee_id >=10
group by job_id
having sum(salary)>30000
order by ������_�ѱ޿� desc, ������_��ձ޿�;

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
    COUNT(*) ���εȰǼ�
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



