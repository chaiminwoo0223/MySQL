USE market_db;

CREATE TABLE table2(
col1 INt PRIMARY KEY,
col2 INT UNIQUE,
col3 INT UNIQUE
);

SHOW INDEX FROM table2;