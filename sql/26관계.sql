# 1 : n ( n : 1 )
# 1 : 1

# 직원 정보
# id, 이름, 생년월일, 주소, 직급, 연봉

# 직원연봉
# id, 연봉

# n : m (다 대 다)
#  -> 연결 테이블을 생성해야 함

# 고객
# id, 고객명, 주소

# 상품
# id, 상품명, 가격

# 주문정보
# 고객ID, 상품ID

USE test_table;
CREATE TABLE my_table41
(
    id      INT AUTO_INCREMENT PRIMARY KEY,
    name    VARCHAR(20),
    address VARCHAR(100)
);

CREATE TABLE my_table42
(
    id    INT AUTO_INCREMENT PRIMARY KEY,
    name  VARCHAR(20),
    price INT
);

CREATE TABLE my_table43
(
    customer_id INT NOT NULL REFERENCES my_table41 (id),
    product_id  INT NOT NULL REFERENCES my_table42 (id)
)
