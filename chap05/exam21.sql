USE market_db;

ALTER VIEW v_viewtest1
AS
   SELECT B.mem_id "회원 아이디", M.mem_name "회원 이름", B.prod_name "제품 이름", M.addr, CONCAT(M.phone1, M.phone2) "연락처"
   FROM buy B
   INNER JOIN member M
   ON B.mem_id = M.mem_id;
   
SELECT DISTINCT `회원 아이디`, `회원 이름` FROM v_viewtest1;