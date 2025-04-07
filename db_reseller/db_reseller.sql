select p.pname,p.pprice, sum(ps.quantity_sold) as total_sales
from product p join product_sales ps on p.pid = ps.pid
where ps.sale_date between '2022-01-01 00:00:00' and '2025-01-01 00:00:00'
group by p.pname,p.pprice
having sum(ps.quantity_sold) <= 100
order by total_sales desc,p.pprice asc , p.pname asc
limit 3;