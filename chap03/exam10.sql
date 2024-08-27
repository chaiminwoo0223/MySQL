USE market_db;

SELECT mem_name, height
FROM member
WHERE height >= 163 AND height <= 165;

SELECT mem_name, height
FROM member
WHERE height BETWEEN 163 AND 165;