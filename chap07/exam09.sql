USE market_db;

DROP FUNCTION IF EXISTS sumFunc;
DELIMITER $$
CREATE FUNCTION sumFunc(number1 INT, number2 INT)
   RETURNS INT
BEGIN
   RETURN number1 + number2;
END $$
DELIMITER ;

SELECT sumFunc(100, 200) AS "합계";