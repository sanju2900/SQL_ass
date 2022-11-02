--Write a C# program to get a list of values from the user. 
--(Passport information: passport number, candidate name, passport expiry date, 
--years of validity, applied through channel (Normal, Priority),etc) for atleast 
--10 candidates. Create a table and upload this information to the table using a Stored Procedure.


use sanjana
create table passport_info(
pass_num bigint primary key,
candidate_name varchar(50),
pass_expiry_date date,
year_of_validity int,
applied_channel varchar(50)
)

drop table passport_info

create or alter procedure pass @pass_number bigint,@cand_name varchar(20),@pass_ED date, @yov int,@channel varchar(20) as
insert into passport_info values (@pass_number,@cand_name,@pass_ED , @yov ,@channel)

select * from passport_info
