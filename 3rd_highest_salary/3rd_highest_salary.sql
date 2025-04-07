-- find the 3rd

with third as (
	select distinct salary
	from employee
	order by salary desc
	limit 3
)
select name,salary
from employee
where salary = (select min(salary) from third)
order by name asc;
