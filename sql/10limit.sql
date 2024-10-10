USE w3schools;

# LIMIT 이란 무엇인가?
# LIMIT : 조회 결과 수(레코드 수, 행의 수)를 제한

SELECT *
FROM Orders
ORDER BY OrderDate
LIMIT 20;

SELECT *
FROM Employees
ORDER BY BirthDate DESC
LIMIT 2;

SELECT *
FROM Products
ORDER BY Price DESC
LIMIT 10;

SELECT *
FROM Products
WHERE CategoryID = 3
ORDER BY Price
LIMIT 5;

SELECT *
FROM Orders
WHERE CustomerID = 1
ORDER BY OrderDate DESC
LIMIT 1;

# LIMIT 수1 : 상위 (수1) 개
# LIMIT n1, n2 : (n1)번째부터 (n2)개, 단 n1은 0부터 시작
SELECT *
FROM Customers
ORDER BY CustomerID
LIMIT 3;

SELECT *
FROM Customers
ORDER BY CustomerID
LIMIT 3,5; # 첫 숫자는 0부터 시작이므로, 3은 4번째를 뜻함. 고로 4번째부터 5개임.

SELECT *
FROM Employees
ORDER BY BirthDate
LIMIT 1;

SELECT *
FROM Employees
ORDER BY BirthDate
LIMIT 0,1;

SELECT *
FROM Employees
ORDER BY BirthDate
LIMIT 1,1;

SELECT *
FROM Employees
ORDER BY BirthDate
LIMIT 2,1;

# 페이지 나누기

# 91명 고객
SELECT *
FROM Customers
ORDER BY CustomerID;

# 한 페이지에 10명 씩
# 1 페이지 1~10
SELECT *
FROM Customers
ORDER BY CustomerID
LIMIT 0,10;
# 2 페이지 11~20
SELECT *
FROM Customers
ORDER BY CustomerID
LIMIT 10,10;
# 3 페이지 21~30
SELECT *
FROM Customers
ORDER BY CustomerID
LIMIT 20,10;

# 기존 데이터 복사해서 테이블에 추가하기
INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT CustomerName, ContactName, Address, City, PostalCode, Country
From Customers;

SELECT COUNT(*)
From Customers;