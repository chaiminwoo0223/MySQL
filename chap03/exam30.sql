USE market_db;

CREATE TABLE hongong3 (
toy_id INT AUTO_INCREMENT PRIMARY KEY,
toy_name CHAR(4),
age INT);
ALTER TABLE hongong3 AUTO_INCREMENT = 1000;
SET @@auto_increment_increment = 3;

INSERT INTO hongong3 VALUES (NULL, '토마스', 20);
INSERT INTO hongong3 VALUES (NULL, '제임스', 23);
INSERT INTO hongong3 VALUES (NULL, '고든', 25);

SELECT * FROM hongong3;