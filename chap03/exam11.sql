USE market_db;

SELECT mem_name, addr
FROM member
WHERE addr = '경기' OR addr = '전남' OR addr = '경남';

SELECT mem_name, addr
FROM member
WHERE addr IN('경기', '전남', '경남');