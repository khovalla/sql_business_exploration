
use magist;

-- 3.1
select*
from product_category_name_translation;

select*
from order_items;

---- 3.2

SELECT 
	order_purchase_timestamp 
FROM orders;
SELECT 
	min(order_purchase_timestamp), max(order_purchase_timestamp)
FROM orders;



----- 3.3
--- 1

select avg (timestampdiff (day, order_purchase_timestamp, order_delivered_customer_date))
from orders;
    
---- 2 

select (timestampdiff (day, order_delivered_customer_date, order_estimated_delivery_date)),
 order_delivered_customer_date, order_estimated_delivery_date, order_status
from orders
where order_status = 'delivered';

--- order by (timestampdiff (day, order_delivered_customer_date, order_estimated_delivery_date));

--- all orders 99441

select count(order_status)
from orders;

--- all delivered 96478

select order_status, count(order_status)
from orders
where order_status = 'delivered';

--- late 9289

select count(timestampdiff (day,order_estimated_delivery_date, order_delivered_customer_date))
from orders
where (timestampdiff (day, order_delivered_customer_date, order_estimated_delivery_date)) <= 0;

---- in tame 87187

select count(timestampdiff (day, order_estimated_delivery_date, order_delivered_customer_date))
from orders
where (timestampdiff (day, order_delivered_customer_date, order_estimated_delivery_date)) > 0;

--- more then a mouth delay 2051

select count(timestampdiff (day,order_estimated_delivery_date, order_delivered_customer_date))
from orders
where (timestampdiff (day, order_delivered_customer_date, order_estimated_delivery_date)) > 30;

--- a week delay 4830

select count(timestampdiff (day,order_estimated_delivery_date, order_delivered_customer_date))
from orders
where (timestampdiff (day, order_delivered_customer_date, order_estimated_delivery_date)) > 6 
and  (timestampdiff (day, order_delivered_customer_date, order_estimated_delivery_date)) < 8;

--- 1 day delay 

select count(timestampdiff (day,order_estimated_delivery_date, order_delivered_customer_date))
from orders
where (timestampdiff (day, order_delivered_customer_date, order_estimated_delivery_date)) > 0 
and  (timestampdiff (day, order_delivered_customer_date, order_estimated_delivery_date)) < 2;
---- 3

select avg (product_length_cm), avg (product_height_cm), avg (product_width_cm)
from orders
join order_items as o on orders.order_id = o.order_id
join products as p on o.product_id = p.product_id
where (timestampdiff (day, order_delivered_customer_date, order_estimated_delivery_date)) > 0;

-----------------------------
select product_category_name, product_length_cm, product_height_cm, product_width_cm
from orders
join order_items as o on orders.order_id = o.order_id
join products as p on o.product_id = p.product_id
where (timestampdiff (day, order_delivered_customer_date, order_estimated_delivery_date)) > 0;
