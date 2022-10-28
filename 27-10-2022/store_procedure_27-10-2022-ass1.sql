--Create a Stored Procedure to show only the Employees working on C# in the base location of Bangalore.
--Display the result set with Employee ID, Name, Working Language and Base Location.

create table Employees(emp_id int primary key,
emp_name varchar(20),
lang varchar(20),
loc varchar(30)
)

insert into Employees values(102,'shubham','cpp','Bangalore')	
insert into Employees values(103,'anand','c++','Delhi')	
insert into Employees values(101,'sanjana','c#','Bangalore')	
insert into Employees values(104,'mukesh','c#','Mumbai')	
insert into Employees values(105,'banty','python','Haryana')	
insert into Employees values(106,'himi','c#','Bangalore')	
insert into Employees values(107,'Raj','java','maharastra')	
insert into Employees values(108,'diya','PHP','gujarat')

drop table Employees
create or alter procedure sanju @language varchar(50),@location varchar(50) as 
select * from Employees where lang=@language and loc =@location
exec sanju 'c#' ,'Bangalore'
