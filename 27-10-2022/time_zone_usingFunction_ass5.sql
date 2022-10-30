--Create a table that has time from various time zones (US, UK, Dubai, Singapore, etc) 
--Create a UDF where you set the alarm clock to 5 am if the time zone is Dubai,
--6 am if it is UK and 7 am if it is any other time zone.

CREATE TABLE time_zon(
con_code INT PRIMARY KEY,
con_name varchar(20),
)


insert into time_zon values(1001,'US')
insert into time_zon values(1002,'UK')
insert into time_zon values(1003,'Dubai')
insert into time_zon values(1004,'Singapore')

SELECT* FROM time_zon

CREATE FUNCTION timezon (@c_name varchar(20))
RETURNS varchar(20) AS
BEGIN
DECLARE @res AS varchar(20)
   IF @c_name='Dubai'
    set @res = '5 am'
   ELSE IF @c_name='UK'
     set @res = '6 am'
   ELSE 
   set @res = '7 am'

   RETURN @res
END
drop table time_zon
select dbo.timezon('US')