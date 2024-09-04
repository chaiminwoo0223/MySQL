USE market_db;

DROP PROCEDURE IF EXISTS ifelse_proc;
DELIMITER $$
CREATE PROCEDURE ifelse_proc(IN memName VARCHAR(10))
BEGIN
   DECLARE debutYear INT; -- 변수 선언
   SELECT YEAR(debut_date) INTO debutYear FROM member
   WHERE mem_name = memName;
   IF (debutYear >= 2015) THEN
      SELECT "신인 가수네요. 화이팅 하세요." AS "메시지";
   ELSE
      SELECT "고참 가수네요. 그동안 수고하셨습니다." AS "메시지";
   END IF;
END $$
DELIMITER ;

CALL ifelse_proc("오마이걸");