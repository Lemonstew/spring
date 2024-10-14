USE test_table;

# DEFAULT : 값을 넣지 않을 때의 기본값
CREATE TABLE my_table24
(
    col1 VARCHAR(1),
    col2 VARCHAR(1) DEFAULT 'x'
);

INSERT INTO my_table24
    (col2) VALUE ('a');

SELECT *
FROM my_table24;

INSERT INTO my_table24
    (col1) VALUE ('a');

INSERT INTO my_table24
    (col1, col2) VALUE ('a', NULL);

SElECT *
FROM my_table24;

DESC my_table24;

CREATE TABLE my_table25
(
    coll INT NOT NULL UNIQUE DEFAULT 0
);

INSERT INTO my_table25
    (coll) VALUE (2);

CREATE TABLE my_table26
(
    ssn     VARCHAR(30)  NOT NULL UNIQUE,
    name    VARCHAR(100) NOT NULL,
    age     INT          NOT NULL DEFAULT 0,
    CHECK (age >= 0),
    address VARCHAR(300) NOT NULL
);

DESC my_table26;

INSERT INTO my_table26
    (ssn, name, age, address) VALUE ('a', 'b', 23, 'a');

SELECT *
FROM my_table26;