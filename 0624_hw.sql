SELECT
    a.empno, a.ename, b.deptno, b.dname
FROM emp a natural join dept b;


SELECT
    *
FROM emp a NATURAL join dept b;


SELECT
    *
FROM emp a inner join dept b
on b.deptno=a.deptno;

CREATE table dept_temp as SELECT
    *
FROM dept;

update dept_temp
set dname = 'CONSULTING'
where dname = 'RESEARCH';

update dept_temp
set dname = 'MARKETING'
where dname = 'SALES';

SELECT
    *
FROM dept_temp;


SELECT *
FROM DEPT A NATURAL INNER JOIN dept_temp B;

SELECT *
FROM DEPT A NATURAL JOIN dept_temp B;

SELECT
    *
FROM DEPT A JOIN dept_temp B
ON b.deptno = a.deptno
AND B.DNAME = a.dname
AND B.LOC = A.LOC;


SELECT
    *
FROM DEPT A JOIN dept_temp B
USING(DEPTNO);


SELECT
    a.deptno, a.dname, a.loc, b.dname,B.LOC
FROM DEPT A JOIN dept_temp B
USING(DEPTNO);

SELECT
    deptno, a.dname, a.loc, b.dname,B.LOC
FROM DEPT A JOIN dept_temp B
USING(DEPTNO);


SELECT
    *
FROM DEPT A JOIN dept_temp B
USING(DNAME);

SELECT
    *
FROM DEPT A JOIN dept_temp B
USING (LOC,DEPTNO);