select 
	c.customer_id, 
	c.name, 
	count(o.order_id) as order_count 
from customers as c
inner join orders as o on o.customer_id = c.customer_id
where o.order_id is not null
group by 
	c.customer_id, 
	c.name
having count(o.order_id) > 1
order by order_count desc;
