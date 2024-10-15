USE test_table;
DROP TABLE my_table48;
CREATE TABLE my_table48
(
    a    INT,
    name VARCHAR(20)
);
DROP TABLE my_table49;
CREATE TABLE my_table49
(
    b    INT,
    note VARCHAR(200)
);

INSERT INTO my_table48
VAlUES (3, 'kim'),
       (4, 'lee'),
       (5, 'park'),
       (6, 'choi');

INSERT INTO my_table49
VALUES (4, '노벨상'),
       (5, '최우수상'),
       (6, '대상'),
       (7, '장려상'),
       (8, '참가상');

# 카테시안 곱
SELECT *
FROM my_table49
         JOIN my_table48;

SELECT *
FROM my_table49
         LEFT JOIN my_table48
                   ON my_table49.b = my_table48.a;

USE w3schools;

SELECT e.EmployeeID, e.LastName, e.FirstName
FROM Orders o
         RIGHT JOIN Employees e
                    On o.EmployeeID = e.EmployeeID
WHERE o.EmployeeID IS NULL
ORDER BY e.EmployeeID;

SELECT *
