with total as (
	select o.user_id,sum(p.price * o.quantity) as price
	from products p join orders o on o.product_id = p.id
	group by o.user_id
)
select u.name,t.price as total_price
from users u join total t on u.id = t.user_id
order by t.price desc,u.id asc
limit 1;