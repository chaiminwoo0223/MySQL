USE naver_db;

DROP TABLE IF EXISTS buy, member;
CREATE TABLE member
(mem_id CHAR(8) NOT NULL PRIMARY KEY,
mem_name VARCHAR(10) NOT NULL,
height TINYINT UNSIGNED NULL,
email CHAR(30) NULL UNIQUE
);

INSERT INTO member VALUES("BLK", "블랙핑크", 163, "pink@gmail.com");
INSERT INTO member VALUES("TWC", "트와이스", 167, NULL);