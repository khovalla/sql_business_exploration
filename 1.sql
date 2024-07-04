
use magist;

select*
from order_payments
order by order_id;

select*
from orders as o
right join customers as c
on o.customer_id = c.customer_id;

----- 1
select count(*)
from orders;

----- 2

select order_status, count(order_status)
from orders
group by order_status;

----- 3

SELECT
	YEAR(order_purchase_timestamp) AS only_year,
	MONTH(order_purchase_timestamp) AS only_month,
	COUNT(customer_id)
		FROM orders
			GROUP BY only_year, only_month
				ORDER BY only_year, only_month;

----- 4
select count(distinct product_id)
from products;

----- 5

SELECT 
    product_category_name_english,
    COUNT(DISTINCT product_id) AS n_products
FROM
    products
JOIN
	product_category_name_translation
    USING(product_category_name)
GROUP BY product_category_name
ORDER BY COUNT(DISTINCT product_id) DESC;

----- 6

SELECT COUNT(DISTINCT product_id) AS number_of_products
	FROM order_items;

----- 7
select min(price), max(price)
from order_items;

select*
from order_items
order by price desc;

----- 8

SELECT *
	FROM order_payments;
SELECT order_id, SUM(payment_value) AS highest_order
	FROM order_payments
		GROUP BY order_id
			ORDER BY highest_order DESC
				LIMIT 1;

SELECT
MAX(payment_value),
MIN(payment_value)
	FROM order_payments;

