SELECT cohorts.name as cohort_name, count(assignment_submissions.*) AS totalSubmissions 
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
JOIN assignment_submissions ON student_id = students.id
GROUP BY cohort_name 
ORDER BY totalSubmissions ASC;