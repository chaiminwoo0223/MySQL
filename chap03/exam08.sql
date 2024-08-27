USE market_db;

SELECT mem_name, height, mem_number 
FROM member 
WHERE height >= 165 AND mem_number > 6;