SELECT
    COUNT(*) as 전체함수, count(height) as 키건수,
    MAX(height) as 최대키, min(height) as 최소키,
    round(avg(height),2) as 평균키
FROM player;



SELECT
    position as 포지션, avg(height) as 평균키
FROM player;



SELECT
    position as 포지션, avg(height) as 평균키
FROM player
GROUP BY 포지션;


SELECT
    position as 포지션, count(*) as 인원수, count(height) as 키대상,
    Max(height) as 최대키, Min(height) as 최소키
    ,round(avg(height),2) as 평균키
FROM player
GROUP by position;


SELECT
    position as 포지션, round(avg(height),2) as 평균키    
FROM player
where avg(height)>=180
Group by position;


SELECT
    position as 포지션, round(avg(height),2) as 평균키    
FROM player
Group by position
having avg(height)>=180;



SELECT
    position as 포지션, avg(height) as 평균키
FROM player
having avg(height)>=180
group by position;



SELECT
    team_id as 팀ID, Count(*) as 인원수
FROM player
where team_id in('K09','K02')
group by team_id;



SELECT
    team_id as 팀ID, Count(*) as 인원수
FROM player
group by team_id
having team_id in('K09','K02');



SELECT
    position as 포지션, round(avg(height),2) as 평균키
FROM player
group by position
having max(height)>=190;

SELECT
    ename as 사원명, deptno as 부서번호
    , EXTRACT(month from hiredate) as 입사월, sal as 급여
FROM emp;