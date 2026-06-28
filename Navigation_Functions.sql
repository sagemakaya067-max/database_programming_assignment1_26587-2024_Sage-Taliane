-- Navigation Functions

-- LAG()
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    e.grade,
    LAG(e.grade) OVER (
        PARTITION BY s.student_id
        ORDER BY e.course_id
    ) AS previous_grade
FROM Students s
JOIN Enrollments e
ON s.student_id = e.student_id;

-- LEAD()
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    e.grade,
    LEAD(e.grade) OVER (
        PARTITION BY s.student_id
        ORDER BY e.course_id
    ) AS next_grade
FROM Students s
JOIN Enrollments e
ON s.student_id = e.student_id;

