SELECT
    ename AS 사원명, SAL AS 월급, comm AS 커미션,
    (SAL*12) + COMM AS 연봉A, (sal*12)+NVL(COMM,0)AS 연봉B
FROM emp;