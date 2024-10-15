USE test_table;

CREATE TABLE my_table39
(
    id     INT PRIMARY KEY AUTO_INCREMENT,
    name   VARCHAR(30) NOT NULL DEFAULT '홍길동',
    gender VARCHAR(1)  NOT NULL,
    age    INT         NOT NULL
);
# my_table40
# 학생 전화번호
CREATE TABLE my_table40
(
    student_id INT          NOT NULL,
    phone      VARCHAR(100) NOT NULL,
    PRIMARY KEY (student_id, phone),
    FOREIGN KEY fk1_ (student_id) REFERENCES my_table39 (id)
);

INSERT INTO my_table39
    (name, gender, age)
VALUES ('kim', 'm', 30),
       ('lee', 'f', 20),
       ('park', 'm', 15);
SELECT *
FROM my_table39;
INSERT INTO my_table40
VALUES (1, '9393'),
       (1, '33535'),
       (2, '1341');
SELECT *
FROM my_table40;
