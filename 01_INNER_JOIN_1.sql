/*
[질문]
각 sale_id에 해당하는 제품 이름(product_name), 판매 연도(year), 판매 가격(price)을 조회하는 SQL 쿼리를 작성합니다.
*/

# [SETTING]
USE practice;
# DROP TABLE sales;
CREATE TABLE sales
(
    sale_id    INT,
    product_id INT,
    year       INT,
    quantity   INT,
    price      INT,
    PRIMARY KEY (sale_id)
);
INSERT INTO sales (sale_id, product_id, year, quantity, price)
VALUES (1, 100, 2022, 10, 5000),
    (2, 100, 2023, 12, 5000),
    (7, 200, 2025, 15, 9000);
SELECT *
FROM sales;

# [SETTING]
USE practice;
# DROP TABLE product;
CREATE TABLE product
(
    product_id   INT,
    product_name VARCHAR(255),
    PRIMARY KEY (product_id)
);
INSERT INTO product (product_id, product_name)
VALUES (100, 'Nokia'),
    (200, 'Apple'),
    (300, 'Samsung');
SELECT * FROM product;

# 정답
select product_name, year, price from product as p
inner join sales as s
on p.product_id = s.product_id;

# 중간코드1
select
	s.sale_id,
    s.product_id,
    s.year,
    s.quantity,
    s.price,
    p.product_id,
    p.product_name
from sales as s
inner join product as p
on p.product_id = s.product_id;


