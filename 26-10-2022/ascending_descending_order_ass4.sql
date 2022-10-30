--Write a query to print the names of the employees and departments from the employee 
--table with name ascending and department descending.


CREATE TABLE employee(
emp_id INT primary key,
emp_name varchar(20),
dep_name varchar(30)
)

insert into employee values(101,'Krishna','Biotech')
insert into employee values(102,'Krishu','Biotechnology')
insert into employee values(103,'Sanjana','Electronic')
insert into employee values(104,'nisha','Electric')
insert into employee values(105,'savi','trading')
insert into employee values(106,'sai','sports')


insert into employee values(107,'Raj','Computer')
insert into employee values(108,'Golu','ECE')
insert into employee values(109,'Rahul','EEE')
insert into employee values(110,'sanya','chemical')
insert into employee values(111,'Laxmi','civil')
insert into employee values(112,'urvashi','statistic')

insert into employee values(113,'sanju','cs')
insert into employee values(114,'ravi','Agriculture')
insert into employee values(115,'raju','uno')
insert into employee values(116,'nile','CA')
insert into employee values(117,'rekha','IAS')
insert into employee values(118,'Arushi','police service')

select* from employee
select * from employee order by emp_name ASC ,dep_name DESC
