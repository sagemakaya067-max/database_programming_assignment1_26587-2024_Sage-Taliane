-- Distribution Functions

-- NTILE()
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    e.grade,
    NTILE(4) OVER (ORDER BY e.grade DESC) AS performance_group
FROM Students s
JOIN Enrollments e
ON s.student_id = e.student_id;

-- CUME_DIST()
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    e.grade,
    CUME_DIST() OVER (ORDER BY e.grade) AS cumulative_distribution
FROM Students s
JOIN Enrollments e
ON s.student_id = e.student_id;