USE market_db;

-- 인덱스 사용 X
SELECT mem_name, mem_number
FROM member
WHERE mem_number*2 >= 14;

-- 인덱스 사용 O
SELECT mem_name, mem_number
FROM member
WHERE mem_number >= 14/2;