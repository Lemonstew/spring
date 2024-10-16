USE w3schools;

# HAVING : 집계 결과에 조건을 주기 위한 키워드
SELECT Country, COUNT(CustomerID) 인원
FROM Customers
GROUP BY Country
HAVING 인원 > 5;

SELECT e.FirstName, e.LastName, COUNT(o.OrderID)
FROM Employees e
         JOIN Orders o ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID
HAVING COUNT(o.OrderID) >= 100
ORDER BY e.FirstName;

SELECT Orders.OrderID
FROM Orders;