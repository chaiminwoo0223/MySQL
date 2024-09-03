USE market_db;

DROP TABLE if EXISTS member;
CREATE TABLE member(
mem_id CHAR(8),
mem_name VARCHAR(10),
mem_number INT, 
addr CHAR(2)
);

INSERT INTO member VALUES("TWC", "트와이스", 9, "서울");
INSERT INTO member VALUES("BLK", "블랙핑크", 4, "경남");
INSERT INTO member VALUES("WMN", "여자친구", 6, "경기");
INSERT INTO member VALUES("OMY", "오마이걸", 7, "서울");
SELECT * FROM member;

ALTER TABLE member
ADD CONSTRAINT
UNIQUE(mem_id);
SELECT * FROM member;

ALTER TABLE member
ADD CONSTRAINT
UNIQUE(mem_name);
SELECT * FROM member;

INSERT INTO member VALUES("GRL", "소녀시대", 8, "서울");
SELECT * FROM member;