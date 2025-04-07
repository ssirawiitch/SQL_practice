with A as(
select m.mid,m.title, count(*) as total_views
from movie m join customer c on m.mid = c.mid
group by m.mid,m.title
order by total_views desc
)
select mid,title,total_views
from A
where total_views >= all(select total_views from A)
order by title asc;