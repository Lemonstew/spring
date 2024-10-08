USE w3schools;
# SELECT 컬럼명들.. FROM 테이블명 WHERE 조건

# 컬럼명 = '값'
SELECT FirstName, LastName, BirthDate
FROM Employees
WHERE BirthDate = '1963-08-30';

# BirthDate < '1963-08-30' --> 기준 날짜 이전에 태어난 사람
# BirthDate >= '1963-08-30' --> 기준 날짜와 그 이후에 태어난 사람
# BirthDate != '1963-08-30' --> 기준 날짜와 다른 날짜에 태어난 사람
# != 기호와 <> 기호는 같다

# d > 이러한 경우는 abcABC 로 시작하는 경우

SELECT *
FROM Orders
WHERE OrderDate >= '1998-01-01';

SELECT *
FROM OrderDetails
WHERE Quantity < 10;

SELECT *
FROM Products
WHERE CategoryID <= 3;
