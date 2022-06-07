SELECT
    player_name AS 선수명, POSITION AS 위치, HEIGHT AS 키, WEIGHT AS 몸무게
FROM player;

SELECT
    player_name AS "선수 명" , POSITION AS 위치, HEIGHT AS 키, WEIGHT AS 몸무게
FROM player;

SELECT
    player_name AS 선수명, HEIGHT-WEIGHT AS "키-몸무게"
FROM player;

SELECT
    player_name AS 선수명, ROUND(weight/((HEIGHT/100)*(HEIGHT/100)),2) AS 비만지수
FROM player;

SELECT
    player_name || ' 선수, '|| HEIGHT||' cm, '||weight||' kg' as 체격정보
FROM PLAYER;