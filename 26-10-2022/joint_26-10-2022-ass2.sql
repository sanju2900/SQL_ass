drop table country
CREATE TABLE people(	
emp_id INT primary key, 	
emp_name varchar(20),	
emp_city varchar(20),	
state_name varchar(20)	
);	

insert into people values(101,'sanjana','patna','bihar')	
insert into people values(102,'shubham','Hajipur','bihar')	
insert into people values(103,'anand','chandni','delhi')	
insert into people values(104,'mukesh','surat','Gujarat')	
insert into people values(105,'banty','Kanpur','UP')	

insert into people values(106,'himi','pawae','maharastra')	
insert into people values(107,'Raj','mumbai','maharastra')	
insert into people values(108,'diya','vadodra','gujarat')	

drop table people
CREATE TABLE country(	
district_id INT primary key,	
emp_id INT,	
district varchar(20),	

foreign key(emp_id) references people(emp_id)	
)	

insert into country values(10001,101,'patna')	
insert into country values(10002,102,'vaishali')	
insert into country values(10003,103,'new dehli')	
insert into country values(10004,104,'surat')	
insert into country values(10005,105,'kanpur')	

insert into country values(10006,106,'pune')	
insert into country values(10007,107,'thane')	
insert into country values(10008,108,'vadodra')	

select* from people	
select* from country	
delete from country where district_id = 10007

select country.district_id, people.emp_name, people.emp_city,country.district from people 	
JOIN country	
ON people.emp_id = country.emp_id	

select country.district_id, people.emp_name, people.emp_city,country.district from people 	
INNER JOIN country	
ON people.emp_id = country.emp_id	

select country.district_id, people.emp_name, people.emp_city,country.district from people 	
FULL OUTER JOIN country	
ON people.emp_id = country.emp_id	




select country.district_id, people.emp_name, people.emp_city,country.district from people 	
LEFT OUTER JOIN country	
ON people.emp_id = country.emp_id	

select country.district_id, people.emp_name, people.emp_city,country.district from people 	
RIGHT OUTER JOIN country	
ON people.emp_id = country.emp_id