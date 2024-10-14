USE test_table;

# UNIQUE : 여러 행이 같은 값을 가질 수 없음

CREATE TABLE my_table19
(
    col1 VARCHAR(2),
    col2 VARCHAR(2) UNIQUE
);
SELECT *
FROM my_table19;

INSERT INTO my_table19
    VALUE ('a', 'b');
INSERT INTO my_table19
    VALUE ('a', 'c');
INSERT INTO my_table19
    VALUE ('d', 'b');
INSERT INTO my_table19
    VALUE (NULL, 'd');
INSERT INTO my_table19
    VALUE ('a', NULL);
INSERT INTO my_table19
    VALUE ('b', NULL); -- ok

DESC my_table19;
CREATE TABLE my_table20
(
    title VARCHAR(20) NOT NULL,
    price INT,
    isbn  VARCHAR(20) UNIQUE
);

CREATE TABLE my_table21
(
    social_number INT UNIQUE   NOT NUll,
    name          VARCHAR(300) NOT NULL,
    age           INT          NOT NULL
);

# NOT NULL UNIQUE
CREATE TABLE my_table22
(
    col1 VARCHAR(1),
    col2 VARCHAR(2) NOT NULL UNIQUE
);
SELECT *
FROM my_table22;
INSERT INTO my_table22
    VALUE (NULL, 'a');
INSERT INTO my_table22
    VALUE (NULL, 'b');
INSERT INTO my_table22
    VALUE (NULL, 'b');
INSERT INTO my_table22
    VALUE ('a', NULL);
