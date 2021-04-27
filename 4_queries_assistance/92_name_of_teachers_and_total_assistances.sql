-- SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, COUNT (assistance_requests) as total_assistances
-- FROM cohorts
-- JOIN students on  cohorts.id = cohort_id
-- JOIN assistance_requests on students.id = assistance_requests.student_id
-- JOIN teachers on teacher_id = teachers.id
-- WHERE cohorts.name = 'JUL02'
-- ORDER BY teacher


--  apparently we can group by more than one thing. Its not intuitive, but at least we know now

SELECT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests) as total_assistances
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;