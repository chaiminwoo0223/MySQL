USE market_db;

DROP PROCEDURE IF EXISTS user_proc1;
DELIMITER $$
CREATE PROCEDURE user_proc1(IN userName VARCHAR(10))
BEGIN
   SELECT * FROM member WHERE mem_name = userName;
END $$
DELIMITER ;

CALL user_proc1("에이핑크");