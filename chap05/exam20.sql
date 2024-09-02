USE market_db;

CREATE VIEW v_viewtest1
AS 
   SELECT B.mem_id "Member ID", M.mem_name AS "Member Name", B.prod_name, M.addr AS "Produnt Name", CONCAT(M.phone1, M.phone2) AS "Office Phone"
   FROM buy B
   INNER JOIN member M
   ON B.mem_id = M.mem_id;
   
SELECT DISTINCT `Member ID`, `Member Name` FROM v_viewtest1;