USE market_db;

DROP FUNCTION IF EXISTS calcYearFunc;
DELIMITER $$
CREATE FUNCTION calcYearFunc(dYear INT)
   RETURNS INT
BEGIN
   DECLARE runYear INT;
   SET runYear = YEAR(CURDATE()) - dYear;
   RETURN runYear;
END $$
DELIMITER ;

SELECT calcYearFunc(2010) AS "활동 햇수";

SELECT calcYearFunc(2007) INTO @debut2007;
SELECT calcYearFunc(2013) INTO @debut2013;
SELECT @debut2007 - @debut2013 AS "2007과 2013 차이";

SELECT mem_id, mem_name, calcYearFunc(YEAR(debut_date)) AS "활동 햇수"
FROM member;