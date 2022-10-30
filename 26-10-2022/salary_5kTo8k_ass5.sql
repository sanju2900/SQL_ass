-- Write a query to fetch the employee names who have salaries more than 50000 and less than 80000

CREATE TABLE employee(emp_id INT primary key,emp_name varchar(20) NOT NULL UNIQUE,salary BIGINT)

SELECT * from employee

insert into employee values(1,'krishna',200000)
insert into employee values(2,'sanjana',60000)
insert into employee values(3,'mukesh',80000)
insert into employee values(4,'sai',70000)
insert into employee values(5,'savi',40000)
insert into employee values(6,'vinu',45000)
insert into employee values(7,'pooja',52000)
insert into employee values(8,'raj',65000)
insert into employee values(9,'rani',80000)

select * from employee

drop table employee
select * from employee where salary > 50000 and salary<80000