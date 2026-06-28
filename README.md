###### database_programming_assignment1_26587-2024_Sage-Taliane
### Student Information System

## Business Problem
Universities need an efficient system to manage student records, course enrollments, and academic performance. Manual record management is time-consuming, prone to errors, and makes reporting difficult. This project develops a Student Information System database to organize student information, manage course registrations, track grades, and generate academic reports using SQL Common Table Expressions (CTEs) and Window Functions.

## Database Schema
The database consists of three related tables:

Students
- student_id (Primary Key)
- first_name
- last_name
- gender
- department
- year_of_study

Courses
- course_id (Primary Key)
- course_name
- credits

Enrollments
- enrollment_id (Primary Key)
- student_id (Foreign Key)
- course_id (Foreign Key)
- semester
- grade

## Entity Relationship Diagram (ERD)
(See ER Image)

## CTE Implementations
# Simple CTE
# Business Value
This query identifies students who scored above 85. It helps the university recognize high-performing students for scholarships, awards, and academic support programs.

# Multiple CTEs
# Business Value
This query uses two Common Table Expressions (CTEs). The first CTE calculates the average grade for each student, while the second CTE selects students whose average grade is 85 or higher. This helps the university identify top-performing students for scholarships, awards, or academic recognition.

# Recursive CTE
# Business Value
This recursive CTE generates the university study levels from Year 1 to Year 4. It can be used to create academic reports or organize students according to their year of study.

# CTE with Aggregation
# Business Value
This query uses a Common Table Expression (CTE) with the AVG() aggregate function to calculate the average grade for each student. It helps the university evaluate academic performance and identify students who may need support or qualify for academic recognition.

# CTE with JOIN
# Business Value
This query uses a Common Table Expression (CTE) with JOIN operations to combine data from the Students, Enrollments, and Courses tables. It provides a complete view of each student's enrolled courses and grades, helping the university monitor academic performance and generate student reports.

## Window Function Implementations

# Ranking Functions

ROW_NUMBER()
# Business Interpretation
This query assigns a unique position to each student based on their grade, even if two students have the same score.

# - RANK()
# Business Interpretation
Students with the same grade receive the same rank. The next rank is skipped.

# - DENSE_RANK()
# Business Interpretation
Students with the same grade share the same rank, but no ranking numbers are skipped.

# - PERCENT_RANK()
# Business Interpretation
This query shows each student's relative position compared with other students based on their grades.

# Aggregate Window Functions

# - SUM() OVER()
# Business Interpretation
This query calculates the total grades obtained by each student across all enrolled courses.

# - AVG() OVER()
# Business Interpretation
This query calculates each student's average grade while displaying every course record.

# - MIN() OVER()
# Business Interpretation
This query identifies the lowest grade obtained by each student.

# - MAX() OVER()
# Business Interpretation
This query identifies the highest grade obtained by each student.

# Navigation Functions

# - LAG()
# Business Interpretation
This query displays the previous grade of each student. It helps compare a student's performance across different courses.

# - LEAD()
# Business Interpretation
This query displays the next grade of each student, making it easier to compare consecutive course results.

# Distribution Functions

# - NTILE()
# Business Interpretation
This query divides students into four performance groups (quartiles). It helps identify high-performing and low-performing students.

# - CUME_DIST()
# Business Interpretation
This query calculates the cumulative distribution of student grades. It shows the percentage of grades that are less than or equal to the current grade, helping the university understand the overall grade distribution.

## Analysis and Findings

# Descriptive Analysis
The Student Information System stores student records, course information, enrollment details, and grades. The SQL queries provide useful reports on student performance and course participation.

# Diagnostic Analysis
The analysis shows differences in student academic performance. Some students consistently achieve higher grades, while others perform below average. These results help identify academic trends and performance gaps.

# Prescriptive Analysis
Based on the analysis, the university should:
  Reward high-performing students with scholarships or academic recognition.
  Provide academic support to students with low grades.
  Continuously monitor student performance using SQL reports to improve learning outcomes.

## References
1. Oracle Database 21c SQL Language Reference.
2. Oracle SQL Developer Documentation.
3. Database Programming Course Notes.

## Academic Integrity Statement
I declare that this project is my own original work. All SQL scripts, analysis, and documentation were completed independently in accordance with the university's academic integrity policy.
