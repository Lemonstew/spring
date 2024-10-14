USE test_table;
CREATE TABLE my_table29
(
    name VARCHAR(2),
    age  INT
);

DESC my_table29;

# 컬럼 추가
ALTER TABLE my_table29
    ADD COLUMN address VARCHAR(100) NOT NULL UNIQUE DEFAULT 30;

INSERT INTO my_table29
    VALUE ('s', 22, 'London');

SELECT *
FROM my_table29;

ALTER TABLE my_table29
    ADD COLUMN email VARCHAR(50) NOT NULL;

# my_table29에 새 컬럼 country 추가

ALTER TABLE my_table29
    ADD COLUMN country VARCHAR(100) NOT NULL DEFAULT 'Korea';

SELECT *
FROM my_table29;

# 중간에 컬럼 추가하기
ALTER TABLE my_table29
    ADD COLUMN city VARCHAR(20) AFTER address;
ALTER TABLE my_table29
    ADD COLUMN ssn VARCHAR(20) UNIQUE FIRST;
