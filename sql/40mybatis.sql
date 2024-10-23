USE test_table;

CREATE TABLE my_table59
(
    student_id   INT,
    model_number INT,
    product_name VARCHAR(30),
    birth_date   DATE,
    inserted     DATETIME,
    score        DEC(10, 2)
);
INSERT INTO my_table59
VALUES (10, 21, 'computer', '2002-02-02', NOW(), 3.14),
       (20, 33, 'pizza', '1992-01-12', NOW(), 123.45),
       (30, 45, 'tesla', '2024-11-11', NOW(), 456.78);


USE w3schools;
SELECT p.ProductName p_name, p.Price price
FROM Orders o
         JOIN Customers c ON o.CustomerID = c.CustomerID
         JOIN Suppliers s ON s.ContactName = c.ContactName
         JOIN Products p ON p.SupplierID = s.SupplierID
WHERE o.OrderID = 10248;

SELECT *
FROM Orders
WHERE OrderID = 10248;

SELECT *
FROM Customers
WHERE CustomerID = 90;

SELECT *
FROM Suppliers
WHERE ContactName = 'Matti Karttunen';

INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT CustomerName, ContactName, Address, City, PostalCode, Country
FROM Customers;
