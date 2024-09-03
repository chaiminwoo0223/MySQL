USE market_db;

SHOW INDEX FROM member;

DROP INDEX idx_member_mem_name ON member;
DROP INDEX idx_member_addr ON member;
DROP INDEX idx_member_mem_number ON member;

SELECT table_name, constraint_name
FROM information_schema.referential_constraints
WHERE constraint_schema = "market_db";

ALTER TABLE buy
DROP FOREIGN KEY buy_ibfk_1;
ALTER TABLE member
DROP PRIMARY KEY;