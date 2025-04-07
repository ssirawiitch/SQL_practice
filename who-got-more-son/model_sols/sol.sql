SELECT d.DName
FROM Employees e LEFT JOIN Departments d
ON e.DID = d.DID
WHERE e.EName LIKE '%son%' or e.EName LIKE '%Son%'
GROUP BY d.DName
ORDER BY COUNT(*) DESC, d.DName ASC
LIMIT 1
