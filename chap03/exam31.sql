USE market_db;

UPDATE hongong3
SET toy_name = 'J'
WHERE toy_name = '제임스';

UPDATE hongong3
SET toy_name = '제임스', age = 24
WHERE toy_name = 'J';

UPDATE hongong3
SET age = age + 1;

SELECT * FROM hongong3;