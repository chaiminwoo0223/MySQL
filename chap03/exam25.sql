USE market_db;

SELECT mem_id "회원 아이디", SUM(price*amount) "총 구매 금액" 
FROM buy 
GROUP BY mem_id;

SELECT mem_id "회원 아이디", SUM(price*amount) "총 구매 금액" 
FROM buy 
GROUP BY mem_id 
HAVING SUM(price*amount) > 1000;

SELECT mem_id "회원 아이디", SUM(price*amount) "총 구매 금액" 
FROM buy 
GROUP BY mem_id 
HAVING SUM(price*amount) > 1000
ORDER BY SUM(price*amount) DESC;