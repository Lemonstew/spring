USE test_table;

DESC my_table29;

# 컬럼 변경
ALTER TABLE my_table29
    MODIFY COLUMN ssn VARCHAR(10) NULL DEFAULT '0000' UNIQUE;

SELECT *
FROM my_table29;

# 컬럼변경 시 제약사항을 위반하는 기존 레코드의 값을 적절히 수정해야 함
UPDATE my_table29
SET ssn = '1'
WHERE name = 's';
ALTER TABLE my_table29
    MODIFY COLUMN ssn VARCHAR(30) NOT NULL DEFAULT '0000' UNIQUE;

DESC my_table29;
# address 컬럼의 자료형 varchar(3)으로 변경
# NOT NULL 유지

UPDATE my_table29
SET address = 'lon'
WHERE name = 's';
ALTER TABLE my_table29
    MODIFY COLUMN address VARCHAR(3) NOT NULL UNIQUE DEFAULT 30;

# 컬럼 삭제
# 매우 주의!

ALTER TABLE my_table29
    DROP COLUMN IF EXISTS city;

CREATE TABLE book
(
    isbn ,
    title,
    author,
    price,

)