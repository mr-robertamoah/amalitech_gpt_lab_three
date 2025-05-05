-- SQL query to find the top customers who have spent the most
select 
	c.customer_id, 
	c.name, 
	c.email, 
	c.country, 
	o.total_amount 
from customers as c
inner join (
	select 
		a.order_id, 
		b.customer_id, 
		sum(a.quantity * a.unit_price) as total_amount 
	from order_items as a
	inner join orders as b on b.order_id = a.order_id
	group by a.order_id, b.customer_id
) as o on o.customer_id = c.customer_id
order by o.total_amount desc;
