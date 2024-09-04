USE market_db;

DROP PROCEDURE IF EXISTS dynamic_proc;
DELIMITER $$
CREATE PROCEDURE dynamic_proc(IN tableName VARCHAR(20))
BEGIN
   SET @sqlQuery = CONCAT("SELECT * FROM ", tableName); -- SELECT 문자열 생성
   PREPARE myQuery FROM @sqlQuery; -- SELECT 문자열 준비
   EXECUTE myQuery; -- SELECT 문자열 실행
   DEALLOCATE PREPARE myQuery; -- 사용한 myQuery 해제
END $$
DELIMITER ;

CALL dynamic_proc("member");