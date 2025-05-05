-- SQL query to return monthly sales data per product
select 
	p.product_id, 
	p.name, 
	sum(oi.quantity) as quantity_sold, 
	sum(oi.quantity * oi.unit_price) as sales_amount,
	year(o.order_date) as order_year,
	month(o.order_date) as order_month
from products as p
inner join order_items as oi on oi.product_id = p.product_id
inner join orders as o on o.order_id = oi.order_id and (o.status = "Shipped" or o.status = "Delivered")
group by 
	p.product_id, 
	p.name, 
	year(o.order_date),
	month(o.order_date)
order by 
	year(o.order_date) desc,
	month(o.order_date) desc;