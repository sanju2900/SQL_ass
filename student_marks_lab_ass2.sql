--  Create a student table which has information about Students, their marks, 
--  courses, etc.Display on screen the maximum marks, each student has obtained
--  in each course, order it by course.


CREATE TABLE student (
student_id INTEGER PRIMARY KEY, 
student_name varchar(20),
course varchar(20),
marks INTEGER, 
UNIQUE(student_id)
 
 );
 
 
 -- insert some values
INSERT INTO student VALUES (1001,'Ramu','Chem',50);
INSERT INTO student VALUES (1002,'sanju','Math',80);
INSERT INTO student VALUES (1003,'Reena','Phys',60);
INSERT INTO student VALUES (1004,'Raju','Maths',60);
INSERT INTO student VALUES (1005,'Ramesh','Maths',84);
INSERT INTO student VALUES (1006,'Ravi','chem',89);
INSERT INTO student VALUES (1007,'Neelam','Phys',85);
INSERT INTO student VALUES (1008,'Raksha','Maths',95);


-- fetch some values
SELECT * FROM  student  WHERE marks IN (SELECT MAX(marks) FROM student 
GROUP BY course) ORDER BY course