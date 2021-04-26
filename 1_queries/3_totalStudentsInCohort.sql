-- -- MY WAY
-- SELECT COUNT(name)
-- FROM students
-- WHERE cohort_id <= 3;
-- -- THESE DO THE SAME THING

-- THERE WAY
SELECT COUNT(name)
FROM students
WHERE cohort_id IN (1,2,3);
