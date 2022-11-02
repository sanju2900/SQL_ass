--Write a C# program and display Movie information to customers, according to the
--genre they choose: If they say, "horror" , atleast 5 horror movies must be displayed;
--similarly if they choose 'kids' , animation and kids friendly movies should be displayed.
--Use UDF and display information on screen.

use sanjana

CREATE TABLE Movies(
movies_id INT PRIMARY KEY,
Horror_movies varchar(50),
Kids_movies varchar(50)
)

insert into Movies values(1,'The Ring','Charlotte Web')
insert into Movies values(2,'The Burning','Finding Nemo')
insert into Movies values(3,'Raaz','Frozen')
insert into Movies values(4,'In Fabric','Lilo and Stitch')
insert into Movies values(5,'Sator','Mary Poppins')
insert into Movies values(6,'Paranormal Activity','Toy Story')
insert into Movies values(7,'Creepshow','Wall-E')
insert into Movies values(8,'Black Christmas','Beauty and the Beast')
insert into Movies values(9,'The Stuff','Inside Out')

select* from Movies

CREATE FUNCTION Display_Movies()
RETURNS TABLE AS
RETURN
select Horror_movies,Kids_movies from Movies 

select * from Display_Movies()
drop table Movies

