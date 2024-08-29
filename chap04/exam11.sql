DROP PROCEDURE IF EXISTS ifProc1;
DELIMITER $$
CREATE PROCEDURE ifProc1()
BEGIN
IF 100 = 100 THEN
   SELECT "100은 100과 같습니다.";
END IF;
END $$
DELIMITER ;
CALL ifProc1();

DROP PROCEDURE IF EXISTS ifProc2;
DELIMITER $$
CREATE PROCEDURE ifProc2()
BEGIN
DECLARE myNum INT;
SET myNum = 200;
IF myNum = 100 THEN
   SELECT "100입니다.";
ELSE
   SELECT "100이 아닙니다.";
END IF;
END $$
DELIMITER ;
CALL ifProc2();

DROP PROCEDURE IF EXISTS ifProc3;
DELIMITER $$
CREATE PROCEDURE ifProc3()
BEGIN
DECLARE debutDate DATE; -- 데뷔 일자
DECLARE curDate DATE; -- 오늘
DECLARE days INT; -- 활동한 일수

SELECT debut_date INTO debutDate
FROM market_db.member
WHERE mem_id = "APN";

SET curDate = CURRENT_DATE(); -- 현재 날짜
SET days = DATEDIFF(curDate, debutDate); -- 날짜의 차이, 일 단위

IF (days/365) >= 5 THEN -- 5년이 지났다면
   SELECT CONCAT("데뷔한 지 ", days, "일이나 지났습니다. 핑순이들 축하합니다!");
ELSE
   SELECT "데뷔한 지 " + days + "일밖에 안되었네요. 핑순이들 화이팅~";
END IF;
END $$
DELIMITER ;
CALL ifProc3();