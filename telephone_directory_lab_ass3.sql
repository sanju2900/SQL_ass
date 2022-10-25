-- 3. Create a telephone_directory table for atleast 20 citizens. 
-- It should have id, name, tel number, address, profession.Query the
-- table to check how many citizens are working professionals, students, etc.

CREATE TABLE Telephone_Directory (
id int ,
name varchar(20),
tel_no bigint,
address varchar(30),
profession varchar(20)
);

select * from Telephone_Directory

insert into Telephone_Directory values (1001,'Raj',8769713411,'Hajipur','Engineer');
insert into Telephone_Directory values (1002,'nisha',8769713412,'patna','Engineer');
insert into Telephone_Directory values (1003,'sanjana',8769713413,'Hazipur','student');
insert into Telephone_Directory values (1004,'manish',8769713414,'nepal','doctor');
insert into Telephone_Directory values (1005,'ramesh',8769713415,'tonk','student');
insert into Telephone_Directory values (1006,'kunal',8769713416,'jaipur','IAS');
insert into Telephone_Directory values (1007,'preeti',8769713417,'Gaziyabad','student');
insert into Telephone_Directory values (1008,'Poojitha',8769713418,'banglore','Engineer');
insert into Telephone_Directory values (1009,'Rajesh',8769713419,'Dharbanga','student');
insert into Telephone_Directory values (1010,'sudhir',8769713410,'patna','student');
insert into Telephone_Directory values (1011,'Rohit',8769713401,'nalnda','student');
insert into Telephone_Directory values (1012,'Pawan',8769713402,'Motihari','doctor');
insert into Telephone_Directory values (1013,'niraj',8769713403,'patna','Engineer');
insert into Telephone_Directory values (1014,'devdutt',8769713404,'patna','Engineer');
insert into Telephone_Directory values (1015,'sk Guarav',8769713405,'patna','student');
insert into Telephone_Directory values (1016,'Raju',8769713406,'kota','bussiness');
insert into Telephone_Directory values (1017,'rakesh',8769713407,'tonk','bussiness');
insert into Telephone_Directory values (1018,'ubaid',8769713408,'patna','Engineer');
insert into Telephone_Directory values (1019,'Ramu',8769713409,'jaipur','IAS');
insert into Telephone_Directory values (1020,'Ankit',8769713101,'Jharlkhand','IAS');
insert into Telephone_Directory values (1021,'anand',8769713203,'Ranchi','doctor');

SELECT count(*) as citizen_professional from Telephone_Directory WHERE profession!='student' 

drop table Telephone_Directory