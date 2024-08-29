USE market_db;

CREATE TABLE emp_table (emp CHAR(4), manager CHAR(4), phone VARCHAR(8));

INSERT INTO emp_table VALUES ('대표이사', NULL, '0000');
INSERT INTO emp_table VALUES ('영업이사', '대표이사', '1111');
INSERT INTO emp_table VALUES ('관리이사', '대표이사', '2222');
INSERT INTO emp_table VALUES ('정보이사', '대표이사', '3333');
INSERT INTO emp_table VALUES ('영업과장', '영업이사', '1111-1');
INSERT INTO emp_table VALUES ('경리부장', '관리이사', '2222-1');
INSERT INTO emp_table VALUES ('인사부장', '관리이사', '2222-2');
INSERT INTO emp_table VALUES ('개발팀장', '정보이사', '3333-1');
INSERT INTO emp_table VALUES ('개발주임', '정보이사', '3333-1-1');

SELECT *
FROM emp_table A
INNER JOIN emp_table B
ON A.manager = B.emp;

SELECT A.emp "직원", B.emp "직속상관", B.phone "직속상관연락처"
FROM emp_table A
INNER JOIN emp_table B
ON A.manager = B.emp
WHERE A.emp = '경리부장';