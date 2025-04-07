with a as(
select d.dname,count(*) as num
from employees e natural join departments d
where e.ename like '&son&' or e.ename like '&Son&'
group by d.dname
)
select dname
from a
where num = (select max(num) from a)
order by dname asc
limit 1;