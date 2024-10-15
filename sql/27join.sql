USE test_table;
CREATE TABLE my_table44
(
    col1 INT
);
CREATE TABLE my_table45
(
    c1 INT
);
INSERT INTO my_table44
VALUES (1),
       (2),
       (3),
       (3);
INSERT INTO my_table45
VALUES (2),
       (2),
       (3),
       (1),
       (4);

SELECT *
FROM my_table44;
SELECT *
FROM my_table45;

# JOIN (Cartesian Product)
# 결과 열의 수는 각 테이블 열의 합
# 결과 행의 수는 각 테이블 행의 곱
SELECT *
FROM my_table44,
     my_table45;

SELECT *
FROM my_table44
         JOIN my_table45;

CREATE TABLE my_table46
(
    col1 INT,
    col2 VARCHAR(20)
);

CREATE TABLE my_table47
(
    c1 INT,
    c2 VARCHAR(20)
);

INSERT INTO my_table46
    (col1, col2)
VALUES (1, 'kim'),
       (2, 'lee'),
       (3, 'park');

USE w3schools;
SELECT *
FROM Products;
SELECT *
FROM Categories;

SELECT *
FROM Products
         JOIN Categories; -- cartesian product

SELECT *
FROM Products
         JOIN Categories
WHERE Products.CategoryID = Categories.CategoryID;

SELECT *
FROM Products
         JOIN Suppliers;

SElECT *
FROM Products
         JOIN Suppliers
WHERE Products.SupplierID = Suppliers.SupplierID;

SELECT *
FROM Products;

SELECT *
FROM Suppliers;