USE market_db;

SELECT mem_id, price, amount FROM buy ORDER BY mem_id;

SELECT mem_id "회원 아이디", SUM(price*amount) "총 구매 금액" FROM buy GROUP BY mem_id;

SELECT AVG(amount) "평균 구매 개수" FROM buy;

SELECT mem_id "회원 아이디", AVG(amount) "평균 구매 개수" FROM buy GROUP BY mem_id;