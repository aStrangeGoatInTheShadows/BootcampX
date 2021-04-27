SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM cohorts
JOIN students on  cohorts.id = cohort_id
JOIN assistance_requests on students.id = assistance_requests.student_id
JOIN teachers on teacher_id = teachers.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher