SELECT dname AS Mor_name
FROM doctor d
WHERE d.dname LIKE 'C%'                 
  AND d.d_id NOT IN (SELECT d_id FROM work_for)
ORDER BY d.dage DESC, d.d_id ASC;
