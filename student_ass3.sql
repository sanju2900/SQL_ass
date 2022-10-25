-- Write a sql query to display all the students who have joined 
-- the Physics course after the month of July.

-- create a table
CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  month INTEGER NOT NULL
);
-- insert some values
INSERT INTO students VALUES (1, 'Ryan', 1);
INSERT INTO students VALUES (2, 'Joanna', 7);
INSERT INTO students VALUES (3, 'Krishu', 8);
INSERT INTO students VALUES (4, 'golu', 9);
INSERT INTO students VALUES (5, 'sony', 10);
INSERT INTO students VALUES (6, 'rahul', 2);
INSERT INTO students VALUES (7, 'krishna', 3);
-- fetch some values
SELECT * FROM students WHERE month > 7;