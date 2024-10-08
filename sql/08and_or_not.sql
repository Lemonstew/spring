USE w3schools

# <, <=, >, >=, <>, !=, LIKE

# AND OR NOT
SELECT *
FROM Products
WHERE Price > 10.00
  AND Price < 20.00
ORDER BY Price;

SELECT *
FROM Customers
WHERE Country = 'Mexico'
   OR Country = 'USA'
ORDER BY Country, City, CustomerID;

SELECT *
FROM Customers
WHERE NOT Country = 'Mexico';
# SELECT * FROM Customers WHERE Country <> 'Mexico';

SELECT *
FROM Customers
WHERE NOT (Country = 'Mexico'
        Or Country = 'USA')
ORDER BY City;

# AND OR NOT 이 여러번 조합될 시 () 꼭 사용해서 읽기 편하게 작성

# 미국이나 브라질에 사는 이름이 G로 시작하는 고객들
SELECT *
FROM Customers
WHERE CustomerName LIKE 'G%'
  AND (Country = 'USA'
    OR Country = 'Brazil');

SELECT *
FROM Employees
WHERE BirthDate LIKE '195_-__-__';

SELECT *
FROM Products
WHERE Price < 10.00
   OR Price > 100.00
ORDER BY Price;

SELECT *
FROM Orders
WHERE ORDERDATE LIKE '1997-07-__';

SELECT *
FROM Suppliers
WHERE Country = 'USA'
   OR Country = 'UK'
ORDER BY Country DESC;


