USE market_db;

CREATE TABLE hongong4 (
tinyint_col TINYINT,
smallint_col SMALLINT,
int_col INT,
bigint_col BIGINT
);

INSERT INTO hongong4 VALUES (127, 32767, 2147483647, 9000000000000000000);

SELECT * FROM hongong4;