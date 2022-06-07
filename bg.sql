DROP TABLE t_member CASCADE CONSTRAINTS;

CREATE TABLE t_member (
    id varchar2(10) PRIMARY KEY,
    pwd varchar2(10),
    name varchar2(50),
    email varchar2(50),
    joinDate DATE DEFAULT SYSDATE
);


insert into t_member
values('lee', '1212', '�̼���', 'lee@test.com',sysdate);

insert into t_member
values('kim', '1212', '������', 'kim@test.com',sysdate);

insert into t_member
values('park', '1212', '�����', 'park@test.com',sysdate);

SELECT
    *
FROM t_member;

UPDATE t_member SET name = '�̼���' WHERE id ='lee';

DELETE FROM t_member WHERE id = 'lee';