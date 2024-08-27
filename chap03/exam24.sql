USE market_db;

SELECT mem_id, phone1, phone2 FROM member;

SELECT COUNT(*) FROM member;

SELECT COUNT(phone1) "연락처가 있는 회원" FROM member;