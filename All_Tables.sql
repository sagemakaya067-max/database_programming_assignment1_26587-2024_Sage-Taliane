CREATE TABLE Students (
    student_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    gender VARCHAR2(10),
    department VARCHAR2(50),
    year_of_study NUMBER
);

CREATE TABLE Courses (
    course_id NUMBER PRIMARY KEY,
    course_name VARCHAR2(100),
    credits NUMBER
);

CREATE TABLE Enrollments (
    enrollment_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    course_id NUMBER,
    semester VARCHAR2(20),
    grade NUMBER(5,2),

    CONSTRAINT fk_student FOREIGN KEY(student_id)
    REFERENCES Students(student_id),

    CONSTRAINT fk_course FOREIGN KEY(course_id)
    REFERENCES Courses(course_id)
);