USE market_db;

DROP TABLE IF EXISTS second;
CREATE TABLE second(
mem_id CHAR(8),
mem_name VARCHAR(10)
);

INSERT INTO second VALUES("TWC", "트와이스");
INSERT INTO second VALUES("BLK", "블랙핑크");
INSERT INTO second VALUES("WMN", "여자친구");
INSERT INTO second VALUES("OMY", "오마이걸");
INSERT INTO second VALUES("GRL", "소녀시대");
INSERT INTO second VALUES("ITZ", "잇지");
INSERT INTO second VALUES("RED", "레드벨벳");
INSERT INTO second VALUES("APN", "에이핑크");
INSERT INTO second VALUES("SPC", "우주소녀");
INSERT INTO second VALUES("MMU", "마마무");
SELECT * FROM second;

ALTER TABLE second
ADD CONSTRAINT
UNIQUE(mem_id);
SELECT * FROM second;