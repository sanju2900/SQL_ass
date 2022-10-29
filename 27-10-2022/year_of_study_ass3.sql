--Display students information (Name, Age, Sex, Course, Year of Study, etc). 
--Give the Year of study as an input parameter and display only those students 
--(If the input is 1, only show first year students.)Use Stored Procedure for:
--Creating a table with all the information,Displaying all the information,
--Showing the year of study students according to the input parameter


create table student(id int primary key,s_name varchar(30),age int,sex varchar(5),course varchar(30),
yearOfStudy int)

insert into student values (100,'sanju',22,'F','Math',4)
insert into student values(101,'Raj',21,'M','ECE',4)
insert into student values(102,'ankit',24,'M','EEE',2)
insert into student values(103,'musu',23,'M','ECE',1)
insert into student values(104,'aman',22,'M','CS',3)
insert into student values(105,'sikkha',21,'F','ME',2)
insert into student values(106,'sanjana',22,'F','CE',3)
insert into student values(107,'niddhi',24,'F','ECE',4)
insert into student values(108,'pooja',25,'F','CS',1)

select* from student

drop table student
alter procedure info @year int as
select * from student where yearOfStudy=@year
exec info @year=4

