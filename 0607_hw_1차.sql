SELECT
    player_name AS ������, POSITION AS ��ġ, HEIGHT AS Ű, WEIGHT AS ������
FROM player;

SELECT
    player_name AS "���� ��" , POSITION AS ��ġ, HEIGHT AS Ű, WEIGHT AS ������
FROM player;

SELECT
    player_name AS ������, HEIGHT-WEIGHT AS "Ű-������"
FROM player;

SELECT
    player_name AS ������, ROUND(weight/((HEIGHT/100)*(HEIGHT/100)),2) AS ������
FROM player;

SELECT
    player_name || ' ����, '|| HEIGHT||' cm, '||weight||' kg' as ü������
FROM PLAYER;