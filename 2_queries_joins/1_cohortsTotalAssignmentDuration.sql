-- SELECT SUM(assignment_submissions.duration)
-- FROM assignments
-- JOIN students on students.id = student_id
-- JOIN cohorts on students.id = cohorts.id
-- WHERE cohorts.name = 'FEB12'
-- ;

-- Correct Answer
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';