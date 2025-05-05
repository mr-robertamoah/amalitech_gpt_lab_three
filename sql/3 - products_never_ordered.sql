-- SQL query to return a list of products that have never been ordered.
select 
	p.product_id, 
	p.name 
from products as p
left join order_items as oi on oi.product_id = p.product_id
where oi.product_id is null
group by p.product_id;