USE market_db;

CREATE VIEW v_height167
AS 
   SELECT * 
   FROM member
   WHERE height >= 167
   WITH CHECK OPTION;
   
SELECT * FROM v_height167;