USE w3schools;
SELECT *
FROM Employees;
SELECT FirstName, LastName
FROM Employees;
SELECT LastName, FirstName
FROM Employees;
# Customers 테이블의 총 레코드 수는 91개
SELECT *
FROM Customers;
SELECT Country
FROM Customers;

# 중복 제거 키워드 : DISTINCT
# ex) SELECT DISTINCT Country From Customers; --> Country 중복 제거

# Count() : 레코드 수
SELECT COUNT(CustomerName)
FROM Customers;
SELECT COUNT(DISTINCT Country)
FROM Customers;

# 쿼리 작성 관습
# 키워드는 대문자,
# 테이블명과 컬럼명은 소문자
# (회사마다 다름)

# 키워드 앞에서 줄바꿈으로 읽기 쉽게

# SQL 은 대소문자를 구분하지 않음
# 현재 우리가 사용하는 MariaDB는 테이블명만 대소문자 구분함

# ok
SELECT *
FROM Customers;

# not ok
#  SELECT * FROM customers;

# ok ( 컬럼명은 괜찮음 )
SELECT customerName
FROM Customers;

SELECT CustomerName, ContactName, Address
FROM Customers;