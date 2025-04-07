SELECT sname,major
FROM student
WHERE sid not in (
	SELECT sid
	FROM registration
	WHERE semester LIKE '%2024%'
)