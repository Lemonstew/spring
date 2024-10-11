USE w3schools;

UPDATE Customers
SET CustomerName = 'Simone',
    ContactName  = 'Luciani',
    Country      = 'Italy'
WHERE CustomerID = 1;

# 꼭 UPDATE 전에 같은 WHERE 절로 SELECT 먼저 해볼 것!

SELECT *
FROM Customers
WHERE Country = 'Italy';

# 1번 상품의 이름을 '케이크'로 바꾸기

SELECT *
FROM Products
WHERE ProductID = 1;

UPDATE Products
SET ProductName = 'Cake'
WHERE ProductID = 1;

# 3번 직원의 생일을 2001-01-01 로 바꾸기

SELECT *
FROM Employees
WHERE EmployeeID = 3;

UPDATE Employees
SET BirthDate = '2000-01-01'
WHERE EmployeeID = 3;

# 1번 공급자의 도시는 Seoul

SELECT *
FROM Suppliers
WHERE SupplierID = 1;

UPDATE Suppliers
SET City    = 'Seoul',
    Country = 'Korea'
WHERE SupplierID = 1;

