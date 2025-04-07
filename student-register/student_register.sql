select s.sname,s.major
from student s natural join registration r
where s.sid not in (select sid from registration where semester like '&2024%');