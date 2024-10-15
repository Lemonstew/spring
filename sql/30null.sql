USE test_table;
CREATE TABLE my_table50
(
    id   INT,
    name VARCHAR(30)
);
INSERT INTO my_table50
    (id, name)
VAlUES (1, 'kim'),
       (2, 'lee'),
       (3, 'park'),
       (null, 'choi'),
       (null, 'son'),
       (4, null),
       (5, null);
SELECT *
FROM my_table50;

# IS NULL : 값의 NULL 여부
SELECT *
FROM my_table50
WHERE id IS NULL;
# IS NOT NULL
SELECT *
FROM my_table50
WHERE id IS NOT NULL;
SELECT *
FROM my_table50
WHERE name IS NOT NULL;

# NULL 과의 모든 연산은 FALSE
SELECT *
FROM my_table50
WHERE id > 3;

# IFNULL -> NULL 일 경우 대체해서 사용

# NULL 산술연산 NULL
SELECT (id * 2), name
FROM my_table50;

# 집계함수 (그룹함수 SUM, AVG, COUNT, MAX, MIN)에 제외
SELECT *
FROM my_table50;
SELECT COUNT(id)
FROM my_table50;
SELECT SUM(id)
FROM my_table50;
SELECT AVG(id)
FROM my_table50;