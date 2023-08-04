SELECT cohorts.name AS cohort, COUNT(*) AS total_assignments
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohort
ORDER BY total_assignments DESC;