--Write a C# program to display Account details and Customer information
--of users (Account number, Customer name, Aadhar number, Account opened
--date, date of last transaction, etc) whose account balance is greater than 200000.
--Pull information from 2 tables, Use UDF and display information on screen.


use sanjana

CREATE TABLE cus_Info(
cus_name varchar(20),
cus_age INT,
cus_Aadhar_no BIGINT PRIMARY KEY
)

insert into cus_Info values('Sanjana',22,9739439292312)
insert into cus_Info values('Krishna',23,87639292123)
insert into cus_Info values('Raj',18,9094392928909)
insert into cus_Info values('Aman',20,899439292657)
insert into cus_Info values('krishu',24,743439292234)

select* from cus_Info

CREATE TABLE Account_Details(
Acc_no BIGINT PRIMARY KEY,
balance BIGINT,
cus_Aadhar_no BIGINT ,
Acc_opened_date date,
Last_transaction_date date,
FOREIGN KEY(cus_Aadhar_no) references cus_Info(cus_Aadhar_no)
)

insert into Account_Details values(123456789234,200000,9739439292312,'01-05-2022','05-08-2022')
insert into Account_Details values(223456789235,100000,87639292123,'05-08-2022','02-10-2022')
insert into Account_Details values(323456789236,210000,9094392928909,'02-05-2022','03-07-2022')
insert into Account_Details values(423456789237,250000,899439292657,'04-07-2022','07-09-2022')
insert into Account_Details values(523456789238,300000,743439292234,'02-04-2022','02-06-2022')

select* from Account_Details


CREATE OR ALTER FUNCTION print_disp(@bal BIGINT)
RETURNS TABLE AS

  RETURN 
  select Acc_no,cus_name,balance,Account_Details.cus_Aadhar_no,Acc_opened_date,Last_transaction_date
  from Account_Details
  INNER JOIN cus_Info
  ON Account_Details.cus_Aadhar_no = cus_Info.cus_Aadhar_no
  WHERE Account_Details.balance>@bal

 

select * from print_disp(100000)