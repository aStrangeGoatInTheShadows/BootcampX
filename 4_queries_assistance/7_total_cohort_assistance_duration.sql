SELECT cohorts.name AS cohorts_name, SUM(completed_at - started_at) AS total_assistance_request_duration
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
JOIN assistance_requests ON assistance_requests.student_id = students.id
GROUP BY cohorts_name
ORDER BY total_assistance_request_duration