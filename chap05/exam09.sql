USE naver_db;

INSERT INTO member VALUES("BLK", "블랙핑크", 163);
INSERT INTO buy VALUES(NULL, "BLK", "지갑");
INSERT INTO buy VALUES(NULL, "BLK", "맥북");

SELECT M.mem_id, M.mem_name, B.prod_name
FROM buy B
INNER JOIN member M
ON B.mem_id = M.mem_id;