USE market_db;

-- 오름차순
SELECT mem_id, mem_name, debut_date 
FROM member
ORDER BY debut_date;

-- 내림차순
SELECT mem_id, mem_name, debut_date 
FROM member
ORDER BY debut_date DESC;