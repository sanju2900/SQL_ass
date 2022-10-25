-- create a table
CREATE TABLE Employess (
emp_id INT ,
emp_name varchar(20),
emp_city varchar(20),

-- here city should be unique
unique(emp_city)
);
-- insert some values
INSERT INTO Employess VALUES (1, 'Ryan', 'patna');
INSERT INTO Employess VALUES (2, 'Sanju', 'hajipur');
INSERT INTO Employess VALUES (3, 'Raj', 'Mumbai');
INSERT INTO Employess VALUES (4, 'Rani', 'Surat');
INSERT INTO Employess VALUES (5, 'Riya', 'patna');
INSERT INTO Employess VALUES (6, 'Sanju', 'goa');
INSERT INTO Employess VALUES (7, 'Sanju');
-- fetch some values
SELECT * FROM Employess;