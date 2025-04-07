with a as(
	select a.aname,t.tname,a.aid, count(*) as num
	from author a natural join task t natural join submit s natural join contestant
	where s.score = 100
	group by a.aname,t.tname,a.aid
)
select aname,tname
from a
where num = (select max(num) from a)
order by aid asc;