# data 들이 table 안에 저장됨

# table 들은 database(schema) 내에 저장됨

# database (schema) 만들기
DROP DATABASE test1;
DROP TABLE book;

# table 만들기
CREATE DATABASE test1;

# database (schema) 를 옮겨다니는 명령어
CREATE TABLE book
(
    title varchar(100),
    price int
);
USE test1;

# table 지우기
USE w3schools;

# SELECT : 테이블 조회
# FROM 에 테이블명
# SELECT 에 컬럼명
SELECT *
FROM w3schools.Customers;

# 모든 행은 같은 열을 가지고 있음

# 특정 컬럼만 조회
# SELECT 컬럼명 FROM 테이블명
SELECT CustomerID
FROM Customers;
SELECT CustomerID, CustomerName
FROM Customers;

# DESCRIBE 테이블명 : 테이블 구조 확인 --> intelliJ 의 도움을 받아도 됨
# DESCRIBE 나 DESC 나 똑같은 일을 함
DESCRIBE Customers;
DESC Customers;

# Employees 테이블에 어떤 컬럼(필드)가 있는 지 확인하기
DESC Employees;
# Employees 테이블의 레코드의 EmployeeID, LastName, FirstName 컬럼만 조회하기
SELECT EmployeeID, Lastname, FirstName
From Employees;

# * : 모든 컬럼
SELECT *
FROM Employees;

# SELECT 에 작성된 컬럼 순서가 유지됨
SELECT LastName, FirstName
From Employees;
SELECT FirstName, LastName
From Employees;

# Products 테이블의 모든 칼럼과 모든 행 조회
# Products 테이블의 ProductName, Unit, Price 컬럼 조회
# Suppliers 테이블의 City, Country, SupplierName 컬럼 조회 (열순서유지)

SELECT *
FROM Products;
SELECT ProductName, Unit, Price
FROM Products;
SELECT City, Country, SupplierName
FROM Suppliers;