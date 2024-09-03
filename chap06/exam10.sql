USE market_db;

CREATE UNIQUE INDEX idx_member_mem_name
ON member(mem_name);

SHOW INDEX FROM member;

ANALYZE TABLE member;
SHOW TABLE STATUS LIKE "member";

SELECT mem_id, mem_name, addr
FROM member
WHERE mem_name = "에이핑크";