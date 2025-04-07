select a_name, avg(rating) as average_rating,count(*) as total_programs
from programs natural join advertise_by natural join agency 
group by a_name,a_id
having count(p_id) > 0
order by average_rating desc,total_programs desc , a_name asc;
