USE w3schools;

# SELECT 컬럼명들 FROM 테이블명
SELECT *
FROM Customers;

# 조건에 맞는 행들 조회
# WHERE : 조회될 행의 조건이 작성되는 곳

# SELECT 컬럼명 FROM 테이블명 WHERE 조건

SELECT *
FROM Customers
WHERE Country = 'Mexico';

SELECT *
FROM Customers
WHERE Country = "UK";

SELECT *
FROM Employees
WHERE BirthDate = '1968-12-08';

SELECT *
FROM Suppliers
Where Country = 'Spain';

SELECT *
FROM Customers
Where City = 'São Paulo';

SELECT *
FROM Employees
WHERE BirthDate = '1963-08-30';

SELECT *
FROM Categories
WHERE CategoryID = 2;

# 대소문자 구분없음
# 수형식이면 따옴표 생략 가능