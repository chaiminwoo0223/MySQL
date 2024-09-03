USE market_db;

CREATE INDEX idx_member_mem_number
ON member(mem_number);
ANALYZE TABLE member;

SELECT mem_name, mem_number
FROM member
WHERE mem_number >= 7;