USE naver_db;

DROP TABLE IF EXISTS buy, member;
CREATE TABLE member
(mem_id CHAR(8) NOT NULL,
mem_name VARCHAR(10) NOT NULL,
height TINYINT UNSIGNED NULL,
PRIMARY KEY(mem_id)
);