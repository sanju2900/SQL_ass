--Create a Stored Procedure to calculate total marks and display ranks of students accordingly. 
--Have atleast 10 students in the result set.Total marks should include marks from Maths,
--Economics, Commerce, English and Computer Science.

CREATE TABLE student(
student_id INT PRIMARY KEY,
student_name varchar(20),
marks INT,
sub varchar(20)
)
--drop table student
insert into student values(101,'Sanjana',80,'Maths')
insert into student values(102,'Sanjana',60,'Economics')
insert into student values(103,'Sanjana',55,'Commerce')
insert into student values(104,'Sanjana',75,'English')
insert into student values(105,'Sanjana',90,'CS')

insert into student values(106,'Krishna',70,'Maths')
insert into student values(107,'Krishna',60,'Economics')
insert into student values(108,'Krishna',75,'Commerce')
insert into student values(109,'Krishna',65,'English')
insert into student values(110,'Krishna',85,'CS')


insert into student values(111,'raju',95,'Maths')
insert into student values(112,'raju',50,'Economics')
insert into student values(113,'raju',70,'Commerce')
insert into student values(114,'raju',55,'English')
insert into student values(115,'raju',87,'CS')


insert into student values(116,'aman',78,'Maths')
insert into student values(117,'aman',85,'Economics')
insert into student values(118,'aman',65,'Commerce')
insert into student values(119,'aman',51,'English')
insert into student values(120,'aman',97,'CS')


insert into student values(121,'Priya',81,'Maths')
insert into student values(122,'priya',71,'Economics')
insert into student values(123,'priya',61,'Commerce')
insert into student values(124,'priya',52,'English')
insert into student values(125,'priya',93,'CS')

insert into student values(126,'raj',98,'Maths')
insert into student values(127,'raj',55,'Economics')
insert into student values(128,'raj',68,'Commerce')
insert into student values(129,'raj',79,'English')
insert into student values(130,'raj',91,'CS')

insert into student values(131,'emile',92,'Maths')
insert into student values(132,'emile',60,'Economics')
insert into student values(133,'emile',68,'Commerce')
insert into student values(134,'emile',82,'English')
insert into student values(135,'emile',91,'CS')

insert into student values(136,'akash',87,'Maths')
insert into student values(137,'akash',75,'Economics')
insert into student values(138,'akash',62,'Commerce')
insert into student values(139,'akash',65,'English')
insert into student values(140,'akash',95,'CS')


insert into student values(141,'sweta',75,'Maths')
insert into student values(142,'sweta',70,'Economics')
insert into student values(143,'sweta',62,'Commerce')
insert into student values(144,'sweta',65,'English')
insert into student values(145,'sweta',80,'CS')

insert into student values(146,'ravi',85,'Maths')
insert into student values(147,'ravi',77,'Economics')
insert into student values(148,'ravi',58,'Commerce')
insert into student values(149,'ravi',68,'English')
insert into student values(150,'ravi',92,'CS')

SELECT * from student



create or alter procedure stu as
DECLARE @result table (name varchar(20),max_marks INT)
insert into @result select student_name,SUM(marks) AS marks from student group by student_name order by marks DESC
select name,max_marks,DENSE_RANK() over(order by max_marks DESC) as Rank from @result

EXEC stu 
