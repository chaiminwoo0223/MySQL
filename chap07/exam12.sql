USE market_db;

DROP PROCEDURE IF EXISTS cursor_proc;
DELIMITER $$
CREATE PROCEDURE cursor_proc()
BEGIN
   -- 사용할 변수 준비하기
   DECLARE memNumber INT;
   DECLARE cnt INT DEFAULT 0;
   DECLARE totNumber INT DEFAULT 0;
   DECLARE endOfRow BOOLEAN DEFAULT FALSE;
   
   -- 커서 선언하기
   DECLARE memberCursor CURSOR FOR 
      SELECT mem_Number FROM member;
   
   -- 반복 조건 선언하기
   DECLARE CONTINUE HANDLER
      FOR NOT FOUND SET endOfRow = True;
   
   -- 커서 열기
   OPEN memberCursor;
   
   -- 데이터 가져오기(행 반복하기)
   cursor_loop: LOOP
      FETCH memberCursor INTO memNumber;
      
      IF endOfRow THEN
         LEAVE cursor_loop;
	  END IF;
   
      SET cnt = cnt + 1;
      SET totNumber = totNumber + memNumber;
   END LOOP cursor_loop;
   
   -- 데이터 처리하기
   SELECT (totNumber/cnt) AS "회원의 평균 인원 수";
   
   -- 커서 닫기
   CLOSE memberCursor;
END $$
DELIMITER ;

CALL cursor_proc();