SELECT day, count(assignments) as total_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER bY day ASC