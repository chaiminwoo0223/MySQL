USE market_db;

SELECT mem_name, height 
FROM member 
WHERE height > (SELECT height FROM member WHERE mem_name = '에이핑크');