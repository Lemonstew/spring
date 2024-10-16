# 집계함수 (Aggregate Functions)
# COUNT, AVG, SUM, MAX, MIN
# 집계함수 사용 시 NULL 은 포함되지 않는다

USE w3schools;
# COUNT 갯수
SELECT COUNT(*)
FROM Customers;
INSERT INTO Customers
    (CustomerName) VAlUE ('흥민');
SELECT COUNT(ContactName)
FROM Customers;
-- NULL 은 포함이 안됨.
# 그렇기에 별일 없으면 * 또는 PRIMARY KEY 컬럼을 쓰자!

SELECT COUNT(Country)
FROM Customers;
SELECT COUNT(DISTINCT Country)
FROM Customers;

SELECT SUM(Price)
FROM Products;

SELECT SUM(DISTINCT Price)
FROM Products;

SELECT AVG(DISTINCT Price)
FROM Products;

DELETE
FROM Customers
WHERE CustomerID = 92;
# GROUP BY : 소계시 사용
SELECT COUNT(CustomerID)
FROM Customers;

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;

SELECT CategoryID, AVG(Price) 평균
FROM Products
GROUP BY CategoryID;

SELECT e.FirstName, e.LastName, COUNT(o.OrderID)
FROM Employees e
         JOIN Orders o ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID
ORDER BY e.FirstName;

SELECT e.FirstName, e.LastName, COUNT(o.OrderID)
FROM Employees e
         JOIN Orders o ON e.EmployeeID = o.EmployeeID
WHERE o.OrderDate LIKE '1997-01-__'
GROUP BY e.EmployeeID
ORDER BY e.FirstName;

SELECT *
FROM (SELECT *
      FROM Orders
      WHERE OrderDate BETWEEN '1997-01-01' AND '1997-01-31') AS JanOrders
         RIGHT JOIN Employees e ON JanOrders.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID;
