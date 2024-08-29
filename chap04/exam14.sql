DROP PROCEDURE IF EXISTS whileProc;
DELIMITER $$
CREATE PROCEDURE whileProc()
BEGIN
DECLARE i INT; -- 1에서 100까지 증가할 변수
DECLARE hap INT; -- 더한 값을 누적할 변수
SET i = 1;
SET hap = 0;

WHILE (i <= 100) DO
   SET hap = hap + i; -- hap의 원래 값에 i를 더해서, 다시 hap에 넣으라는 의미
   SET i = i + 1; -- i의 원래 값에 1을 더해서, 다시 i에 넣으라는 의미
END WHILE;

SELECT "1부터 100까지의 합 ==>", hap;
END $$
DELIMITER ;
CALL whileProc();

DROP PROCEDURE IF EXISTS whileProc2;
DELIMITER $$
CREATE PROCEDURE whileProc2()
BEGIN
DECLARE i INT; -- 1에서 100까지 증가할 변수
DECLARE hap INT; -- 더한 값을 누적할 변수
SET i = 1;
SET hap = 0;

myWhile:
WHILE (i <= 100) DO
   IF (i%4 = 0) THEN
      SET i = i + 1;
      ITERATE myWhile; -- 지정한 label 문으로 가서 계속 진행
	END IF;
    SET hap = hap + i; 
    IF (hap > 1000) THEN
       LEAVE myWhile; -- 지정한 label 문을 떠남. 즉, WHILE 종료
	END IF;
    SET i = i + 1;
END WHILE;

SELECT "1부터 100까지의 합(4의 배수 제외), 1000 넘으면 종료 ==>", hap;
END $$
DELIMITER ;
CALL whileProc2();