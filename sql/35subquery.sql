USE w3schools;

# subquery : 외부 쿼리 내에 내부 쿼리 작성

# 1번 고객과 같은 국가에 있는 고객들
SELECT *
FROM Customers
WHERE CustomerID = 1;

SELECT *
FROM Customers
WHERE Country = (SELECT Country
                 FROM Customers
                 WHERE CustomerID = 1);

# JOIN
# subquery


# subquery 종류
# 단일행단일열
# 여러행여러열

# subquery :
# 상관서브쿼리 : 외부쿼리의 값을 내부쿼리에서 사용함 (주의하며 사용)
# 비상관서브쿼리 :

# 평균 처리 건수보다 많은 주문을 처리한 직원 목록 조합

# 고객이 가장 많은 국가의 고객 목록