with temp as (
	select c.first_name,count(*) as total,sum(i.total_spent) as money
	from customer c join invoice i on c.cus_id = i.cus_id
	group by c.cus_id,c.first_name
	order by money desc,total asc,c.cus_id asc
)
select first_name
from temp
limit 1;