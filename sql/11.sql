USE w3schools;
DESC Customers;

INSERT INTO Customers
    (CustomerID, CustomerName)
    VALUE (92, '흥민');

SELECT *
FROM Customers
ORDER BY CustomerID DESC;

INSERT INTO Customers
    (CustomerID, CustomerName, ContactName)
    VALUE (93, '강인', '미드필더');

INSERT INTO Customers
    (CustomerID, CustomerName)
VALUES (94, '희찬'),
       (95, '하성'),
       (96, '오타니');

INSERT INTO Customers
    (CustomerID, CustomerName)
    VALUE (97, '범근');

INSERT INTO Customers
    (CustomerName)
    VALUE ('지성');

INSERT INTO Customers
    (CustomerID, CustomerName)
VALUES (99, '페이커'),
       (100, '연아');

SELECT *
FROM Products
ORDER BY ProductID DESC;

INSERT INTO Products
    (ProductID, ProductName)
VALUES (78, 'Kimchi'),
       (79, 'Gochujang')

