--From an orders table, fetch the maximum purchase amount a salesman has made in the last 6 months.

CREATE TABLE orders(
order_id INT primary key,
purchase_amount BIGINT,
order_date date
)

insert into orders values(1,2000,'05-02-2022')
insert into orders values(2,3500,'05-01-2022')
insert into orders values(3,2500,'07-08-2022')
insert into orders values(4,5800,'10-09-2022')
insert into orders values(5,1500,'11-10-2022')
insert into orders values(6,6000,'01-08-2021')
insert into orders values(7,7000,'12-10-2021')
insert into orders values(8,4000,'07-01-2022')

select * from orders



select MAX(purchase_amount) from orders
where purchase_amount in (select purchase_amount from orders where order_date>='05-01-2022' group by purchase_amount)
