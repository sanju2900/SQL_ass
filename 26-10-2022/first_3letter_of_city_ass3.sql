-- Write a sql query to fetch only the first 3 letters of the city from the city table

create table city (city_code INT primary key,city_name varchar(20))

insert into city values(1,'Hajipur')
insert into city values(2,'Mahnar')
insert into city values(3,'Kota')
insert into city values(4,'Patna')
insert into city values(5,'Dudpura')
insert into city values(6,'Pune')
insert into city values(7,'delhi')
insert into city values(8,'Mumbai')

select * from city

select city_code ,SUBSTRING(city_name,1,3) from city

