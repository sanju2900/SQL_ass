--Write a query to fetch all students who joined after Feb 2020

CREATE TABLE new_sudetnts(
s_id INT primary key,
s_name varchar(20),
s_dep varchar(20),
joining_date date
)

insert into new_sudetnts values(1001,'Sanjana','ECE','03-09-2020')
insert into new_sudetnts values(1002,'Krishna','civil','01-05-2021')
insert into new_sudetnts values(1003,'Raj','ME','01-15-2022')
insert into new_sudetnts values(1004,'Kajal','CSE','02-01-2020')
insert into new_sudetnts values(1005,'Ravi','IT','01-01-2020')
insert into new_sudetnts values(1006,'Pavitra','EEE','02-01-2019')
insert into new_sudetnts values(1007,'Navodita','Chemical','08-10-2020')

select * from new_sudetnts

select * from new_sudetnts where joining_date>'02-29-2020'