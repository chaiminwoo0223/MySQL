USE market_db;

SELECT mem_id, amount FROM buy ORDER BY mem_id;

SELECT mem_id, SUM(amount) FROM buy GROUP BY mem_id;

SELECT mem_id "회원 아이디", SUM(amount) "총 구매 개수" FROM buy GROUP BY mem_id;