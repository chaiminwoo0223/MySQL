USE naver_db;

DROP TABLE IF EXISTS member;
CREATE TABLE member
(mem_id CHAR(8) NOT NULL PRIMARY KEY,
mem_name VARCHAR(10) NOT NULL,
height TINYINT UNSIGNED NULL CHECK(height >= 100),
phone1 CHAR(3) NULL
);

INSERT INTO member VALUES("BLK", "블랙핑크", 163, NULL);