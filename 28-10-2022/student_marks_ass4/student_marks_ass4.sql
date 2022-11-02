--Write a simple stored procedure to get the total of a particular student and
--call another stored procedure to list all the students with marks below than that student.
--Input: Student ID
--Output: Student Total (From first SP) Student2, Student3, etc (From Second SP)

use sanjana

CREATE TABLE student(
s_id INT PRIMARY KEY,
s_name varchar(20),
Course_name varchar(50),
marks INT
)

insert into student values(1,'Sanjana','Phys',92)
insert into student values(2,'Sanjana','Chem',83)
insert into student values(4,'Sanjana','Maths',94)
insert into student values(5,'Sanjana','Eng',76)


insert into student values(6,'krishna','Phys',60)
insert into student values(7,'krishna','Chem',80)
insert into student values(8,'krishna','Maths',90)
insert into student values(9,'krishna','Eng',65)

insert into student values(10,'urvashi','Phys',78)
insert into student values(11,'urvashi','Chem',85)
insert into student values(12,'urvashi','Maths',90)
insert into student values(13,'urvashi','Eng',60)

insert into student values(1014,'Raj','Phys',68)
insert into student values(1015,'Raj','Chem',75)
insert into student values(1016,'Raj','Maths',95)
insert into student values(1017,'Raj','Eng',65)

select* from student
--drop table student


CREATE OR ALTER PROCEDURE p1 @t_mark INT AS 
BEGIN
SELECT s_name, SUM(marks) AS s_total from student group by s_name having  SUM(marks) <@t_mark
END

select* from student

CREATE OR ALTER PROCEDURE p2 @d_s_name varchar(20) AS
BEGIN
DECLARE @total_marks AS INT
SELECT  @total_marks = SUM(marks)  from student group by s_name having s_name = @d_s_name 


select SUM(marks) from student group by s_name  having s_name = 'sanjana'

EXEC p1 @total_marks
END

EXEC p1 303 
EXEC p2 'sanjana'