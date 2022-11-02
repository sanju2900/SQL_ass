--Write a query to fetch all students from the student table who do not study Maths and Physics
use sanjana
CREATE TABLE student(
s_id INT primary key,
s_name varchar(20),
s_course varchar(20)
)

drop table student
insert into student values(101,'Sanjana','Maths')
insert into student values(102,'Sanjana','Phys')
insert into student values(103,'Sanjana','chem')

insert into student values(104,'Krishna','Bio')
insert into student values(105,'Krishna','Ag')
insert into student values(106,'Krishna','chem')

insert into student values(107,'Ducku','Maths')
insert into student values(108,'Ducku','Bio')
insert into student values(109,'Ducku','chem')

insert into student values(110,'puja','Bio')
insert into student values(111,'puja','Phys')
insert into student values(112,'puja','chem')

select * from student

SELECT s_name
FROM student
WHERE s_course  not in ('Maths','Phys')
GROUP BY s_name HAVING COUNT(distinct s_course) >= 2