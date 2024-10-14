USE db1;

# 데이터 타입
# 문자형
# 고정형
# 가변형
# 숫자형
# 정수
# 실수
# 날짜형
# 년월일
# 년월일 시분초


# 문자형
# VARCHAR(길이)

CREATE TABLE my_table4
(
    col1 VARCHAR(2),
    col2 VARCHAR(3),
    col3 VARCHAR(5)
);
INSERT INTO my_table4(col1, col2, col3) VALUE ('a', 'b', 'c');
INSERT INTO my_table4(col1, col2, col3) VALUE ('abc', 'abc', 'abc');

INSERT INTO my_table4
    (col1, col2, col3) VALUE ('흥민', '손흥민', '푸스카스상');

SELECT *
FROM my_table4;

CREATE TABLE my_table5
(
    title  VARCHAR(300),
    author VARCHAR(100)
);

CREATE TABLE my_table6
(
    rank       INT,
    name       VARCHAR(100),
    avgRaiting DOUBLE,
    designer   VARCHAR(100)
)

# 숫자형
CREATE TABLE my_table7
(
    price VARCHAR(10)
);
INSERT INTO my_table7
(price) VALUE ('1000');
INSERT INTO my_table7
(price) VALUE (2000);
INSERT INTO my_table7
(price) VALUE ('천원');

# INT, INTEGER

CREATE TABLE my_table8 (
price INT
);

INSERT INTO my_table8
(price) VALUE (1000);
INSERT INTO my_table8
(price) VALUE ('2000');
INSERT INTO my_table8
(price) VAlUE ('천원');

INSERT INTO my_table8
(price) VALUE (50.12);

SELECT *
FROM my_table8;

# DESC, DECIMAL
# 고정된 실수형
# DESC (총숫자 개수, 소숫점 이후 숫자 개수)
CREATE TABLE my_table9(
    col1 DEC(3, 1),
    col2 DEC(5, 2)
);

INSERT INTO my_table9
(col1) VALUE (31.4);
INSERT INTO my_table9
    (col1) VALUE (3.14);
INSERT INTO my_table9
(col1) VALUE (314.1);
INSERT INTO my_table9
(col2) VALUE (314);

SELECT *
FROM my_table9;

CREATE TABLE my_table10 (
    price DOUBlE,
    score DEC (4,1),
    age INT,
    length DEC(3,2),
    width DEC (4,2),
    height DEC (3,2)
)

# 날짜
# DATE 년월일
# YYYY-MM-DD
CREATE TABLE my_table11 (
    col1 DATE
);

INSERT INTO my_table11
(col1) VALUE ('2024-10-14');
INSERT INTO my_table11
(col1) VALUE ('1000-01-01');
INSERT INTO my_table11
(col1) VALUE ('9999-12-31');
SELECT *
FROM my_table11;

# DATATIME : 날짜시간
# 'YYYY-MM-DD HH:MM:SS.ffffff'

CREATE TABLE my_table12
(
    col1 DATETIME
);
INSERT INTO my_table12
(col1) VALUE ('2024-10-14 10:35:08');
INSERT INTO my_table12
(col1) VALUE ('2024-10-14 10:35:59.999999');
SELECT *
FROM my_table12;

CREATE TABLE my_table13(
    col1 DATETIME(6)
);

INSERT INTO my_table13
(col1) VALUE ('2024-10-14 10:35:35.123456');

SELECT *
FROM my_table13;

# my_table14
# birth_date, start_date_time, end_date_time

CREATE TABLE my_table14 (
    birth_date DATE,
    start_date_time DATETIME(2),
    end_date_time DATETIME(2)
);

INSERT INTO my_table14
(birth_date, start_date_time, end_date_time) VALUES ('2001-01-01', '2008-03-02 09:00:00', '2020-02-29 23:59:59.99');

SELECT *
FROM my_table14;

# 다른 스키마(데이터베이스)에 있는 테이블 사용하기
SELECT * FROM w3schools.Products;

USE w3schools;
SELECT *
FROM test_table.my_table14;

CREATE TABLE my_table15 (
    col1 VARCHAR(300),
    col2 INT,
    col3 DEC(15,2),
    col4 DATE,
    col5 DATETIME
);

SELECT * FROM my_table15;

DROP TABLE my_table16;

CREATE TABLE my_table16 (
    title VARCHAR(300),
    price INT,
    score DEC(4, 2),
    published DATE,
    inserted DATETIME
);



SELECT * FROM my_table16;