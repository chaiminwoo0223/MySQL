USE market_db;

CREATE VIEW v_member
AS
   SELECT mem_id, mem_name, addr 
   FROM member;

SELECT * FROM v_member;

SELECT mem_name, addr FROM v_member
WHERE addr IN ("서울", "경기");