--Write a sql query to fetch the list of employees who draw the same salary

CREATE TABLE employee1(
emp_id INT primary key,
emp_name varchar(20) NOT NULL UNIQUE,
salary BIGINT)

SELECT * from employee1

insert into employee1 values(1,'krishna',60000)
insert into employee1 values(2,'Bittu',50000)
insert into employee1 values(3,'Krishu',50000)
insert into employee1 values(4,'Sanju',70000)
insert into employee1 values(5,'Anu',70000)
insert into employee1 values(6,'sanjana',60000)
insert into employee1 values(7,'pooja',60000)
insert into employee1 values(8,'raj',70000)
insert into employee1 values(9,'nelum',80000)

select emp_name,salary from employee1
WHERE salary
IN ( SELECT salary FROM employee1 GROUP BY salary HAVING COUNT(salary) > 1) order by salary
