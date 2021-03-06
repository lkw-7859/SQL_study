SELECT
    *
FROM employees
ORDER BY commission_pct;

SELECT
    salary * commission_pct
FROM employees
ORDER BY commission_pct;

SELECT
    salary * NVL(commission_pct,1)
FROM employees
ORDER BY commission_pct;


SELECT
    first_name, last_name,department_id,
    salary 원래급여,
    DECODE(department_id,60, salary*1.1, salary) 조정된급여,
    DECODE(department_id,60, '10%인상', '미인상') 인상여부
FROM employees;


SELECT
    employee_id,first_name, last_name,salary,
    CASE
        WHEN salary >= 9000 THEN '상위급여'
        WHEN salary BETWEEN 6000 AND 8999 THEN '중위급여'
        ELSE '하위급여'
    END AS 급여등급
FROM employees
WHERE job_id = 'IT_PROG';


SELECT employee_id,
    salary,
    RANK() OVER(ORDER BY salary Desc) Rank_급여,
    DENSE_RANK() OVER(ORDER BY salary Desc) Dense_Rank_급여,
    ROW_NUMBER() OVER(ORDER BY salary Desc) ROW_Rank_급여
FROM employees;


SELECT
    a.employee_id,
    a.department_id,
    b.department_name,
    salary,
     RANK() OVER(Partition by a.department_id order by salary Desc) Rank_급여,
     DENSE_RANK() OVER(Partition by a.department_id order by salary Desc) Dense_Rank_급여,
     ROW_NUMBER() OVER(Partition by a.department_id order by salary Desc) ROW_Rank_급여
FROM employees A,departments B
where a.department_id = b.department_id
order by b.department_id,a.salary desc;







