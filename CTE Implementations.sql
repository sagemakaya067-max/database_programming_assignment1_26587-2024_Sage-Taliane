-- CTE Implementations

-- Simple CTE
WITH High_Performing_Students AS (
    SELECT *
    FROM Enrollments
    WHERE grade > 85
)
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    h.grade
FROM Students s
JOIN High_Performing_Students h
ON s.student_id = h.student_id;

-- Multiple CTE Example
WITH StudentAverage AS (
    SELECT
        student_id,
        AVG(grade) AS average_grade
    FROM Enrollments
    GROUP BY student_id
),
TopStudents AS (
    SELECT
        student_id,
        average_grade
    FROM StudentAverage
    WHERE average_grade >= 85
)
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    t.average_grade
FROM Students s
JOIN TopStudents t
ON s.student_id = t.student_id;

-- Recursive CTE

WITH StudyYears (year_level) AS (
    SELECT 1
    FROM dual

    UNION ALL

    SELECT year_level + 1
    FROM StudyYears
    WHERE year_level < 4
)
SELECT *
FROM StudyYears;

-- CTE with Aggregation

WITH StudentGrades AS (
    SELECT
        student_id,
        AVG(grade) AS average_grade
    FROM Enrollments
    GROUP BY student_id
)
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    sg.average_grade
FROM Students s
JOIN StudentGrades sg
ON s.student_id = sg.student_id;

-- CTE with JOIN

WITH StudentCourses AS (
    SELECT
        s.student_id,
        s.first_name,
        s.last_name,
        c.course_name,
        e.grade
    FROM Students s
    JOIN Enrollments e
        ON s.student_id = e.student_id
    JOIN Courses c
        ON e.course_id = c.course_id
)
SELECT *
FROM StudentCourses;