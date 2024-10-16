USE w3schools;
SELECT *
FROM Orders;
SELECT *
FROM OrderDetails
WHERE OrderID = 10248;

SELECT *
FROM Orders o
         JOIN Customers c
              ON o.CustomerID = c.CustomerID
         JOIN OrderDetails od
              ON od.OrderID = o.OrderID
         JOIN Products p
              ON p.ProductID = od.ProductID
WHERE o.OrderDate = '1996-07-04'
ORDER BY c.CustomerID;

SELECT p.ProductID, p.ProductName, c.CategoryID, c.CategoryName
FROM OrderDetails od
         JOIN Products p
              ON od.ProductID = p.ProductID
         JOIN Orders o ON o.OrderID = od.OrderID
         JOIN Categories c ON c.CategoryID = p.CategoryID
WHERE o.OrderDate = '1996-07-04'
ORDER BY c.CategoryID;

SELECT o.EmployeeID, o.OrderDate, p.ProductID, p.ProductName
FROM OrderDetails od
         JOIN Products p
              ON od.ProductID = p.ProductID
         JOIN Orders o ON od.OrderID = o.OrderID
WHERE EmployeeID = 5
ORDER BY o.OrderDate;