USE naver_db;

DROP TABLE IF EXISTS buy;
CREATE TABLE buy
(num INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
mem_id CHAR(8) NOT NULL,
prod_name CHAR(6) NOT NULL
);
ALTER TABLE buy
ADD CONSTRAINT
FOREIGN KEY(mem_id)
REFERENCES member(mem_id);