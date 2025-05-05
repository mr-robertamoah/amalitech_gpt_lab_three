-- SQL query return the average order value grouped by customers' countries.
select 
	c.country, 
	avg(o.order_value) as avg_order_value
from customers as c
inner join (
	select 
		b.customer_id,
		sum(a.quantity * a.unit_price) as order_value 
	from order_items as a
	inner join orders as b on b.order_id = a.order_id
	group by a.order_id, b.customer_id
) as o on o.customer_id = c.customer_id
group by c.country
order by avg_order_value desc;