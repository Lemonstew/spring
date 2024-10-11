USE w3schools;

# 모든 레코드 삭제 (!!매우 주의!!)
DELETE
FROM Customers;

SELECT *
FROM Customers
WHERE CustomerName = '흥민';

DELETE
FROM Customers
WHERE CustomerName = '흥민';

# 꼭 DELETE 실행 전 같은 WHERE 절로 SELECT 해볼 것 (!! 아무리 급해도 !!)
SELECT *
FROM Customers
WHERE CustomerName = '한강';
