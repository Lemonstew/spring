USE w3schools;

SELECT *
FROM Products;

# ORDER BY : 조회 결과의 순서를 결정
# ORDER BY 컬럼명
SELECT *
FROM Products
ORDER BY Price;

SELECT *
FROM Employees
ORDER BY BirthDate;

SELECT *
FROM Customers
ORDER BY CustomerName;

SELECT *
FROM Customers
WHERE Country = 'usa'
ORDER BY CustomerName;

SELECT *
FROM Products
WHERE CategoryID = 1
ORDER BY Price;

# 내림차순 DESC

SELECT *
FROM Products
ORDER BY Price DESC;

SELECT *
FROM Employees
ORDER BY BirthDate DESC;

SELECT *
FROM Customers
WHERE Country = 'Mexico'
ORDER BY CustomerName DESC;

SELECT *
FROM OrderDetails
WHERE OrderID = 10248
ORDER BY Quantity;

SELECT *
FROM Products
WHERE SupplierID = 1
ORDER BY ProductName;

# 컬럼명 대신 컬럼 인덱스 사용가능 (SELECT 절의 컬럼 순서)

SELECT ProductID, ProductName, SupplierID, CategoryID, Unit, Price
FROM Products
WHERE CategoryID = 1
ORDER BY 3, 6 DESC;