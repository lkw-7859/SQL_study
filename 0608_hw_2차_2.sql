SELECT
    LENGTH('SQL Expert') AS LEN
FROM DUAL;


DESC DUAL;

SELECT
    *
FROM DUAL;

SELECT
    CONCAT(player_name, ' �౸����') as ������
FROM player;

SELECT
    player_name || ' �౸����' as ������
FROM player;

SELECT
    stadium_id, DDD || ')' || TEL AS TEL, LENGTH(DDD || '-' || TEL) AS T_LEN
FROM stadium;




SELECT
    ename
FROM emp;
