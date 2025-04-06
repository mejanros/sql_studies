-- Base Tutorial
-- Query 1
select * 
    
from tb_products as t1

where ("product_category_name" = 'bebes' 
        or "product_category_name" = 'perfumaria')
        and "product_photos_qty" >= 2
limit 100


--Query 2


select * from tb_products as t2 
where (t2.product_category_name = 'bebes' 
        or t2.product_photos_qty > 2)  
        or (t2.product_category_name = 'perfumaria' and
            t2.product_photos_qty > 5)
 
 PRAGMA table_info(tb_customers)