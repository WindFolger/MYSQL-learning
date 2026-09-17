SELECT COUNT(*) FROM product;
-- 按产地分组
SELECT origin,COUNT(*)
  FROM product
  GROUP BY origin;
-- 按产地分组再按平均价格排序
SELECT origin,count(*),AVG(price)
  FROM product
  GROUP BY origin
  ORDER BY AVG(price);
-- 只显示平均价格大于5的产地
SELECT origin,count(*),AVG(price)
  FROM product
  GROUP BY origin
  HAVING AVG(price) > 5;
-- 只显示价格最高的三个产品
SELECT *FROM product
  ORDER BY price DESC 
  LIMIT 3;
-- 分页
SELECT * FROM product 
ORDER BY price ASC 
LIMIT 2, 2; 