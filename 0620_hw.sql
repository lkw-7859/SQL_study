SELECT
    COUNT(*) as ��ü�Լ�, count(height) as Ű�Ǽ�,
    MAX(height) as �ִ�Ű, min(height) as �ּ�Ű,
    round(avg(height),2) as ���Ű
FROM player;



SELECT
    position as ������, avg(height) as ���Ű
FROM player;



SELECT
    position as ������, avg(height) as ���Ű
FROM player
GROUP BY ������;


SELECT
    position as ������, count(*) as �ο���, count(height) as Ű���,
    Max(height) as �ִ�Ű, Min(height) as �ּ�Ű
    ,round(avg(height),2) as ���Ű
FROM player
GROUP by position;


SELECT
    position as ������, round(avg(height),2) as ���Ű    
FROM player
where avg(height)>=180
Group by position;


SELECT
    position as ������, round(avg(height),2) as ���Ű    
FROM player
Group by position
having avg(height)>=180;



SELECT
    position as ������, avg(height) as ���Ű
FROM player
having avg(height)>=180
group by position;



SELECT
    team_id as ��ID, Count(*) as �ο���
FROM player
where team_id in('K09','K02')
group by team_id;



SELECT
    team_id as ��ID, Count(*) as �ο���
FROM player
group by team_id
having team_id in('K09','K02');



SELECT
    position as ������, round(avg(height),2) as ���Ű
FROM player
group by position
having max(height)>=190;

SELECT
    ename as �����, deptno as �μ���ȣ
    , EXTRACT(month from hiredate) as �Ի��, sal as �޿�
FROM emp;