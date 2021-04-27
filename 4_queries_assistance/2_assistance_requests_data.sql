-- SELECT teachers.name, students.name, assignments.name, 
-- (assistance_requests.started_at - assistance_requests.completed_at) AS assistance_duration
-- FROM assignments
-- JOIN assistance_requests ON assignment_id = assignments.id
-- JOIN teachers ON teacher_id = teachers.id
-- JOIN students ON students.id = assistance_requests.student_id
-- ORDER BY assistance_duration ASC;

SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at-started_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;

-- Yours was missing 6k ROWS

-- Select the teacher's name, student's name, assignment's name, and the duration of each assistance request.
-- Subtract completed_at by started_at to find the duration.
-- Order by the duration of the request.