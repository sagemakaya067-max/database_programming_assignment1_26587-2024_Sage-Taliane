-- Ranking Functions

-- ROW_NUMBER()
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    e.grade,
    ROW_NUMBER() OVER (ORDER BY e.grade DESC) AS row_num
FROM Students s
JOIN Enrollments e
ON s.student_id = e.student_id;

-- RANK()
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    e.grade,
    RANK() OVER (ORDER BY e.grade DESC) AS student_rank
FROM Students s
JOIN Enrollments e
ON s.student_id = e.student_id;

-- DENSE_RANK()
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    e.grade,
    DENSE_RANK() OVER (ORDER BY e.grade DESC) AS dense_rank
FROM Students s
JOIN Enrollments e
ON s.student_id = e.student_id;

-- PERCENT_RANK()
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    e.grade,
    PERCENT_RANK() OVER (ORDER BY e.grade) AS percent_rank
FROM Students s
JOIN Enrollments e
ON s.student_id = e.student_id;