USE market_db;

CREATE VIEW v_memberbuy
AS
   SELECT B.mem_id, M.mem_name, B.prod_name, M.addr, CONCAT(M.phone1, M.phone2) "연락처"
   FROM buy B
   INNER JOIN member M
   ON B.mem_id = M.mem_id;
   
SELECT * FROM v_memberbuy WHERE mem_name = "블랙핑크";