SELECT 3;
SELECT 3 + 5;
SELECT 3 * 5;
SELECT 3 / 5;
SELECT 5 % 3;
SELECT 3 - 5;
# SELECT 'hello' || 'world';
SELECT CONCAT('hello', 'world');
SELECT CONCAT(1, 2);
SELECT CONCAT(1, 2 + 4);

USE w3schools;
SELECT Employees.LastName, Employees.FirstName
FROM Employees;

SELECT CONCAT(FirstName, ' ', LastName) full_name
FROM Employees;

SELECT CONCAT(Address, ' ', City, ' ', Country) full_address
FROM Customers;

# 1번 고객의 총 주문 금액
SELECT *
FROM Customers c
         JOIN Orders o
              ON c.CustomerID = o.CustomerID
         JOIN OrderDetails od
              on o.OrderID = od.OrderID
         JOIN Products p
              on od.ProductID = p.ProductID
WHERE c.CustomerID = 1;

SELECT e.EmployeeID,
       CONCAT(e.FirstName, ' ', e.LastName) FullName,
       (SELECT SUM(Price)
        FROM Products
                 JOIN OrderDetails
                      ON Products.ProductID = OrderDetails.ProductID
                 JOIN Orders
                      ON Orders.OrderID = OrderDetails.OrderID
        GROUP BY Orders.EmployeeID)         GOAT
FROM Employees e
         JOIN Orders o
              ON e.EmployeeID = o.EmployeeID
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Products p ON p.ProductID = od.ProductID
WHERE o.OrderDate LIKE '1998-03-__'
ORDER BY GOAT DESC
LIMIT 1
;