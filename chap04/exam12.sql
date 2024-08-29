DROP PROCEDURE IF EXISTS caseProc;
DELIMITER $$
CREATE PROCEDURE caseProc()
BEGIN
DECLARE point INT;
DECLARE credit CHAR(1);
SET point = 88;

CASE 
   WHEN point >= 90 THEN SET credit = 'A';
   WHEN point >= 80 THEN SET credit = 'B';
   WHEN point >= 70 THEN SET credit = 'C';
   WHEN point >= 60 THEN SET credit = 'D';
   ELSE SET credit = 'F';
END CASE;

SELECT CONCAT("취득점수 ==> ", point), CONCAT("학점 ==> ", credit);
END $$
DELIMITER ;
CALL caseProc();