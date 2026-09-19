select 
  r.id AS 记录id,
  p.`name` AS 产品名称,
  r.stage AS 阶段,
  r.record_time AS 时间
  from record r
  join product p ON r.product_id=p.id;
  
SELECT 
  p.id,
  p.`name`,
  p.price,
  r.record_time,
  r.stage
FROM product p
LEFT join record r on p.id=r.product_id;

select id,`name`,price
from product
where price>(SELECT AVG(price) FROM product);
  