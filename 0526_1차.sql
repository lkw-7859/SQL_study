SELECT * FROM employees;

SELECT employee_id, email FROM employees;

SELECT employee_id, first_name, last_name 
FROM employees 
order by employee_id DESC;

SELECT DISTINCT job_id FROM employees;

SELECT employee_id as �����ȣ, first_name AS �̸�, last_name AS ��
FROM employees ;

SELECT employee_id, first_name||last_name 
FROM employees ;

SELECT employee_id, first_name||' '||last_name, email||'@company.com' 
FROM employees ;

SELECT employee_id, salary, salary+500, salary-100, salary*1.1/2
FROM employees;


SELECT employee_id AS �����ȣ,
       salary AS �޿�, 
       salary+500 AS �߰��޿�, 
       salary-100 AS ���ϱ޿�, 
       salary*1.1/2 AS �����޿�
FROM employees;


SELECT * FROM employees WHERE employee_id=100;

SELECT * FROM employees WHERE first_name='David';

SELECT * FROM employees WHERE employee_id>=105;

SELECT * FROM employees WHERE salary BETWEEN 10000 AND 20000;

SELECT * FROM employees WHERE salary IN (10000, 17000, 24000);

SELECT * FROM employees WHERE job_id LIKE 'AD%';



