USE market_db;

SELECT * 
FROM buy
INNER JOIN member
ON buy.mem_id = member.mem_id
WHERE buy.mem_id = 'GRL';

SELECT * 
FROM buy
INNER JOIN member
ON buy.mem_id = member.mem_id;

SELECT buy.mem_id, mem_name, prod_name, addr, CONCAT(phone1, phone2) "연락처"
FROM buy
INNER JOIN member
ON buy.mem_id = member.mem_id;

SELECT buy.mem_id, member.mem_name, buy.prod_name, member.addr, CONCAT(member.phone1, member.phone2) "연락처"
FROM buy
INNER JOIN member
ON buy.mem_id = member.mem_id;

SELECT B.mem_id, M.mem_name, B.prod_name, M.addr, CONCAT(M.phone1, M.phone2) "연락처"
FROM buy B
INNER JOIN member M
ON B.mem_id = M.mem_id;

SELECT M.mem_id, M.mem_name, B.prod_name, M.addr
FROM buy B
INNER JOIN member M
ON B.mem_id = M.mem_id
ORDER BY M.mem_id;

SELECT DISTINCT M.mem_id, M.mem_name, M.addr
FROM buy B
INNER JOIN member M
ON B.mem_id = M.mem_id
ORDER BY M.mem_id;