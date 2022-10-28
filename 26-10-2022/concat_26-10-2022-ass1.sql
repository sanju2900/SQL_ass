-- create a table
CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  first_name TEXT NOT NULL,
  Last_name TEXT NOT NULL
);
-- insert some values
INSERT INTO students VALUES (1, 'Ryan', 'shah');
INSERT INTO students VALUES (2, 'Joanna', 'Raj');
INSERT INTO students VALUES (3, 'Sanjana', 'Kumari');
INSERT INTO students VALUES (4, 'Mukesh', 'Raj');
INSERT INTO students VALUES (5, 'Priya', 'Ranjan');
-- fetch some values
SELECT * FROM students;
SELECT first_name,Last_name, concat(first_name,' ',Last_name) AS Full_name FROM students;