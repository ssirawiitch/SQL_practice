select c.name,sum( o.amount * d.price) as total
from orders o join customers c on c.id = o.c_id
join desserts d on o.d_id = d.id
group by c.id,c.name
order by  total desc,c.id asc
limit 1;