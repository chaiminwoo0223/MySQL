USE market_db;

CREATE INDEX idx_member_addr 
ON member(addr);

SHOW INDEX FROM member;

SHOW TABLE STATUS LIKE "member";

ANALYZE TABLE member;
SHOW TABLE STATUS LIKE "member";