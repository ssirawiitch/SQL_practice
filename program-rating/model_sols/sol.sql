SELECT A.a_name AS a_name, AVG(p.rating) AS average_rating, COUNT(p.p_id) AS total_programs
FROM programs P
JOIN advertise_by AB ON AB.p_id = P.p_id
JOIN agency A ON A.a_id = AB.a_id
GROUP BY A.a_id, A.a_name
HAVING COUNT(p.p_id) > 0
ORDER BY 
    average_rating DESC,
    total_programs DESC,
    a_name ASC;