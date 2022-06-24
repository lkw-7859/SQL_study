SELECT
    dname,loc,deptno
FROM dept
order by dname,loc,deptno desc;


SELECT
    DNAME AS DEPT, LOC AS AREA, DEPTNO
FROM DEPT
ORDER BY dname,AREA,DEPTNO DESC;

SELECT
    DNAME, LOC AS AREA, DEPTNO
FROM DEPT
ORDER BY 1,AREA,3 DESC;


SELECT
    EMPNO, ENAME
FROM EMP
ORDER BY MGR;


SELECT
    EMPNO
FROM (SELECT
    EMPNO,ENAME
FROM EMP
ORDER BY  MGR);


SELECT
    MGR
FROM (SELECT MGR
        FROM EMP
        ORDER BY MGR);

SELECT
    JOB,SAL
FROM EMP
GROUP BY JOB
  HAVING COUNT (*) >0
  ORDER BY SAL;
  
  
SELECT
    JOB
FROM EMP
GROUP BY JOB
 HAVING COUNT(*) >0
 ORDER BY SAL;
 
 
SELECT
    JOB, SUM(SAL) AS  SALARY_SUM
FROM EMP
 GROUP BY JOB
 HAVING SUM(SAL) >5000
 ORDER BY SUM(SAL);
 
SELECT
    player.player_name AS 선수명, team.TEAM_NAME AS 소속팀명
FROM player,TEAM
WHERE team.team_id = player.team_id;

SELECT
    player.player_name AS 선수명, team.TEAM_NAME AS 소속팀명
FROM player INNER JOIN TEAM
ON team.team_id = player.TEAM_id;

SELECT
    player.player_name,player.back_no,player.team_id,
    team.team_name,team.region_name
FROM player,TEAM
WHERE team.team_id = player.team_id;


SELECT
    a.player_name AS 선수명, a.back_no AS 백넘버, a.team_id AS 팀코드
    ,b.team_name AS 팀명 , b.region_name AS 연고지
FROM player A, TEAM B
WHERE B.TEAM_ID = a.team_id;
