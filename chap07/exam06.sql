USE market_db;

DROP PROCEDURE IF EXISTS while_proc;
DELIMITER $$
CREATE PROCEDURE while_proc()
BEGIN
   DECLARE hap INT; -- 합계
   DECLARE num INT; -- 숫자(1부터 100까지 증가)
   SET hap = 0; -- 합계 초기화
   SET num = 1; -- 숫자 초기화  
   
   WHILE (num <= 100) DO -- 100번 반복
      SET hap = hap + num;
      SET num = num + 1; -- 숫자 증가
   END WHILE;
   SELECT hap AS "1~100 합계";
END $$
DELIMITER ;

CALL while_proc();