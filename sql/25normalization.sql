USE test_table;
SELECT *
FROM w3schools.Products;

# 카테고리
# 카테고리 번호 , 카테고리명, 카테고리 설명
# 이행적 종속 아님?

USE w3schools;
ALTER TABLE w3schools.Products
    ADD CONSTRAINT FOREIGN KEY fk1 (CategoryID) REFERENCES Categories (CategoryID);
ALTER TABLE w3schools.Products
    ADD CONSTRAINT FOREIGN KEY fk2 (SupplierID) REFERENCES Suppliers (SupplierID);