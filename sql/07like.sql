USE w3schools

# LIKE : ~ 같은

SELECT *
FROM Customers
WHERE CustomerName = 'Alfreds Futterkiste';

SELECT *
FROM Customers
WHERE CustomerName LIKE '%ed%';

# % : 0개 이상의 임의의 문자들

SELECT *
FROM Customers
WHERE CustomerName LIKE 'A%';
# A(a)로 시작하는

SELECT *
FROM Customers
WHERE CustomerName LIKE '%A';
# A(a)로 끝나는

# %A% --> 중간에 A가 들어가는

# _ : 임의의 한 글자
SELECT *
FROM Employees
WHERE BirthDate LIKE '195_-__-__';
SELECT *
FROM Employees
WHERE BirthDate LIKE '195_-02-__';

SELECT *
FROM Customers
WHERE CustomerName LIKE '%or%';

SELECT *
FROM Customers
WHERE ContactName LIKE 'A%O';

SELECT *
FROM Employees
WHERE BirthDate LIKE '____-07-__'
