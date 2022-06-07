UPDATE departments
SET (manager_id, location_id) = (SELECT manager_id, location_id
                                FROM departments
                                where department_id =40)
where department_name = 'Sample_Dept';   

SELECT *
from departments
where department_id=40;


SELECT
    *
FROM departments
where department_name = 'Sample_Dept';

-- department_id���� null�� �Էµ� �� ���� ������ ���� �߻�
update departments
set department_id = null
where department_name = 'Sample_Dept';

--�Ϲ����� ���
DELETE 
FROM departments
where department_name = 'Sample_Dept';

--���������� ����� ���
DELETE FROM departments
where department_id IN(SELECT department_id 
                       FROM departments
                       WHERE department_name = 'Sample_Dept');

commit;


-- 1.�⺻Ű ���� ����
INSERT INTO departments
VALUES(1000, 'Sample_Dept',200,1700);

-- 2. �ܷ�Ű ���� ���� : �� ���� �θ� ���̺��� ���� ���� ���� �ݵ�� ����
INSERT INTO departments (department_id, department_name, manager_id,location_id)
VALUES(273, 'Sample_Dept',200,111);

-- 3. ����Ű : �ߺ��� ������� ������ (null�� ��� ����)
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary)
VALUES(207, 'first_name', 'last_name', 'SKING', '111.11.11',TO_DATE('030617','ydni'),'IT_PROG' , 60027);

SELECT
    *
FROM employees
where email = 'SKING';

-- 4. NOT NULL : null���� ������� �ʴ´�.
INSERT INTO departments (department_id, department_name, manager_id,location_id)
VALUES(273, null,200,700);

-- 5. CHECK : ������ ���� �� ������ ���� ���
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary)
VALUES(209, 'first_name', 'last_name', 'TEST', '111.11.11',TO_DATE('030617','YYMMDD'),'IT_FROG' ,0);


--���̺� ����
CREATE TABLE sample_project
            (product_id number,
            product_name VARCHAR(30),
            menu_date date);

INSERT INTO sample_project
VALUES(1, 'television',TO_DATE('140101','YYMMDD'));
INSERT INTO sample_project
VALUES(2, 'washer',TO_DATE('150101','YYMMDD'));
INSERT INTO sample_project
VALUES(3, 'cleaner',TO_DATE('160101','YYMMDD'));

UPDATE sample_project
SET menu_date = TO_DATE('150101','YYMMDD')
where product_name = 'washer';

SELECT
    *
FROM sample_project;


ALTER TABLE sample_project ADD(factory varchar(10));

ALTER TABLE sample_project MODIFY(factory char(8));

ALTER TABLE sample_project MODIFY(product_name varchar(5));

ALTER TABLE sample_project RENAME COLUMN factory to factory_name;

-- ������
ALTER TABLE sample_project DROP COLUMN factory_name;
-- �������
TRUNCATE TABLE sample_project;

-- ���̺� ����
DROP TABLE sample_project;