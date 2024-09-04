USE market_db;

CREATE TABLE singer(SELECT mem_id, mem_name, mem_number, addr FROM member);

CREATE TABLE backup_singer(
mem_id CHAR(8) NOT NULL,
mem_name VARCHAR(10) NOT NULL, 
mem_number INT NOT NULL,
addr CHAR(2) NOT NULL, 
modType CHAR(2), -- 변경된 타입
modDate DATE, -- 변경된 날짜
modUser VARCHAR(30) -- 변경한 사용자
);

DROP TRIGGER IF EXISTS singer_updateTrg;
DELIMITER $$
CREATE TRIGGER singer_updateTrg -- 트리거 이름
   AFTER UPDATE -- 수정(UPDATE) 후에 작동하도록 지정
   ON singer -- 트리거를 부착할 테이블
   FOR EACH ROW -- 각 행마다 적용
BEGIN
   INSERT INTO backup_singer VALUES(
   OLD.mem_id, OLD.mem_name, OLD.mem_number, OLD.addr, "수정", CURDATE(), CURRENT_USER()
   );
END $$
DELIMITER ;

DROP TRIGGER IF EXISTS singer_updateTrg;
DELIMITER $$
CREATE TRIGGER singer_updateTrg -- 트리거 이름
   AFTER DELETE -- 삭제(DELETE) 후에 작동하도록 지정
   ON singer -- 트리거를 부착할 테이블
   FOR EACH ROW -- 각 행마다 적용
BEGIN
   INSERT INTO backup_singer VALUES(
   OLD.mem_id, OLD.mem_name, OLD.mem_number, OLD.addr, "삭제", CURDATE(), CURRENT_USER()
   );
END $$
DELIMITER ;

UPDATE singer SET addr = "영국" WHERE mem_id = "BLK";
DELETE FROM singer WHERE mem_number >= 7;
SELECT * FROM backup_singer;

TRUNCATE TABLE singer;
SELECT * FROM backup_singer;