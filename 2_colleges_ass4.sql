-- Create 2 similar tables (Students in 2 colleges) and show only the
-- students who are aged over 21 and are studying Mathematics\

-- create a table
CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER ,
  subject TEXT NOT NULL
);
-- insert some values
INSERT INTO students VALUES (1, 'Ryan', 20,'Mathematics');
INSERT INTO students VALUES (2, 'Joanna', 23,'sst');
INSERT INTO students VALUES (3, 'Raj', 20,'Biology');
INSERT INTO students VALUES (4, 'Sanju', 23,'Geography');
INSERT INTO students VALUES (5, 'Rinku', 20,'Science');
INSERT INTO students VALUES (6, 'krishna', 23,'Mathematics');
INSERT INTO students VALUES (7, 'Sanjana', 22,'Mathematics');
-- fetch some values
SELECT * FROM students WHERE age>21 AND subject = 'Mathematics';


-- create a table
CREATE TABLE students2 (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER ,
  subject TEXT NOT NULL
);
-- insert some values
INSERT INTO students2 VALUES (1, 'sony', 20,'Mathematics');
INSERT INTO students2 VALUES (2, 'divya', 23,'sst');
INSERT INTO students2 VALUES (3, 'Tokoyo', 20,'Biology');
INSERT INTO students2 VALUES (4, 'sky', 23,'Geography');
INSERT INTO students2 VALUES (5, 'raja', 20,'Science');
INSERT INTO students2 VALUES (6, 'himi', 23,'Mathematics');
INSERT INTO students2 VALUES (7, 'priya', 22,'Mathematics');

SELECT * FROM students2 WHERE age>21 AND subject = 'Mathematics';