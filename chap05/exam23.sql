USE market_db;

CREATE OR REPLACE VIEW v_viewtest2
AS
   SELECT mem_id, mem_name, addr
   FROM member;
   
DESCRIBE v_viewtest2;

SHOW CREATE VIEW v_viewtest2;