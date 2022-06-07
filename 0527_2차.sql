-- AD이후 3글자
SELECT
    *
FROM employees WHERE job_id LIKE 'AD___';

SELECT
    *
FROM employees WHERE manager_id IS NULL;

SELECT
    *
FROM employees WHERE salary>4000 AND job_id = 'IT_PROG';

SELECT
    *
FROM employees WHERE salary>4000 AND job_id = 'IT_PROG' OR job_id = 'FI_ACCOUNT';

SELECT
    *
FROM employees WHERE employee_id <> 105;

SELECT
    *
FROM employees WHERE manager_id IS NOT NULL;

SELECT
    LOWER(last_name),UPPER(last_name),INITCAP(email)
FROM employees;

SELECT
    SUBSTR(job_id,1,2)
FROM employees;

SELECT
    REPLACE(job_id,'ACCOUNT','ACCNT')
FROM employees; 

SELECT
    LPAD(first_name,12,'*')
FROM employees; 

SELECT 'start'||TRIM('  - space -   ')||'end' 제거된_공백 FROM dual;

SELECT
    salary,
    TRUNC(salary/30,0) 적용결과0,
    TRUNC(salary/30,1) 적용결과1,
    TRUNC(salary/30,-1) 적용결과2
FROM employees; 

