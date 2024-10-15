USE w3schools;

# alias : 별칭
# 컬럼, 테이블에 별칭을 줄 수 있음

SELECT ProductName, SupplierName
FROM Products AS p
         JOIN Suppliers AS s
              ON p.SupplierID = s.SupplierID
WHERE s.SupplierID = 1;

SELECT ProductName AS 상품명, Unit AS 단위
FROM Products

# 카테고리별 상품명 조회
SELECT c.CategoryName 카명, p.ProductName 상명
FROM Categories c JOIN Products p
ON c.CategoryID = p.CategoryID
ORDER BY c.CategoryID;

SELECT ProductName
From Products;

# 공급자별 공급하는 상품들 조회
SELECT s.SupplierName, p.ProductName
FROM Products p JOIN Suppliers s
ON p.SupplierID = s.SupplierID
ORDER BY s.SupplierName;

SELECT o.OrderDate, e.LastName, e.FirstName
    FROM Orders o JOIN Employees e
ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate = '1996-07-08'
ORDER BY o.OrderDate;