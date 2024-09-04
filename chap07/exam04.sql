USE market_db;

DROP PROCEDURE IF EXISTS user_proc3;
DELIMITER $$
CREATE PROCEDURE user_proc3(IN txtValue CHAR(10), OUT outValue INT)
BEGIN
   INSERT INTO noTable VALUES(NULL, txtValue);
   SELECT MAX(id) INTO outValue FROM noTable;
END $$
DELIMITER ;

CREATE TABLE IF NOT EXISTS noTable(
id INT AUTO_INCREMENT PRIMARY KEY,
txt CHAR(10)
);

CALL user_proc3("테스트1", @myValue);
SELECT CONCAT("입력된 ID 값 ===> ", @myValue);