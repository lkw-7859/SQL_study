SELECT
    ename AS �����, SAL AS ����, comm AS Ŀ�̼�,
    (SAL*12) + COMM AS ����A, (sal*12)+NVL(COMM,0)AS ����B
FROM emp;