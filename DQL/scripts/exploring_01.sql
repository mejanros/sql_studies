-- ======= What are the possibilities in WHERE clausule  =======
-- | The main purpose in this it's explore the possibilities |
-- | find out new ways in order to use where clause.         |
-- + --------------------------------------------------------+

--   Comparison operators

select * from tb_products as t1
where (product_category_name = 'perfumaria'
      and product_photos_qty  > 2)
      or (t1.product_category_name = 'bebes' and t1.product_photos_qty > 3)

limit 200;

select * from tb_products as t2
where (product_category_name = 'bebes' or product_category_name = 'perfumaria')
      and ( t2.product_photos_qty >=3);


-- NULL an NOT NULL
select * from tb_products as t2
where (t2.product_category_name is null) 
limit 200;       

-- Operações com datas

-- selecting only years
select *, strftime('%Y-%m-%d', review_answer_timestamp) as ano
from tb_order_reviews;
 
