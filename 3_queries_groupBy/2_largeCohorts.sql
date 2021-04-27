-- SELECT cohorts.name, COUNT(students.cohort_id)
-- FROM students
-- JOIN cohorts ON cohort_id = students.cohort_id
-- GROUP BY cohorts.name
-- HAVING COUNT(students.cohort_id) >= 18
-- ORDER BY COUNT(students.cohort_id) DESC

SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;