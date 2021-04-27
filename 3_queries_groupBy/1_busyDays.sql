SELECT day ,COUNT(assignments.*) as TotalAssignments
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;