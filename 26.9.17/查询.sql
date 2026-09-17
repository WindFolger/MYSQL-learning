select
MAX(price)as 最高价,
MIN(price)as 最低价,
AVG(price)as 平均价,
SUM(price)as 总库存
FROM product;