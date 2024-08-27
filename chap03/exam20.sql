USE market_db;

SELECT mem_name, height
FROM member
ORDER BY height DESC
LIMIT 2, 3;