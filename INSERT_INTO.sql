INSERT INTO Students VALUES (1,'Alice','Uwase','Female','Computer Science',2);
INSERT INTO Students VALUES (2,'Jean','Habimana','Male','Information Systems',3);
INSERT INTO Students VALUES (3,'Grace','Mukamana','Female','Computer Science',1);
INSERT INTO Students VALUES (4,'Eric','Niyonzima','Male','Networking',2);
INSERT INTO Students VALUES (5,'Patrick','Mugisha','Male','Information Systems',4);

COMMIT; 

INSERT INTO Courses VALUES (101,'Database Programming',3);
INSERT INTO Courses VALUES (102,'Operating Systems',4);
INSERT INTO Courses VALUES (103,'Computer Networks',3);
INSERT INTO Courses VALUES (104,'Web Development',2);

COMMIT;

INSERT INTO Enrollments VALUES (1,1,101,'Semester 1',85);
INSERT INTO Enrollments VALUES (2,1,104,'Semester 1',90);
INSERT INTO Enrollments VALUES (3,2,101,'Semester 1',78);
INSERT INTO Enrollments VALUES (4,2,102,'Semester 1',80);
INSERT INTO Enrollments VALUES (5,3,101,'Semester 1',92);
INSERT INTO Enrollments VALUES (6,3,103,'Semester 1',88);
INSERT INTO Enrollments VALUES (7,4,103,'Semester 1',75);
INSERT INTO Enrollments VALUES (8,5,104,'Semester 1',95);

COMMIT;