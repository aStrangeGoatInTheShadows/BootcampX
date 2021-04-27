SELECT assignments.day as day ,COUNT(assignments.*) as TotalAssigments
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;

