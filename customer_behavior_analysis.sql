use customer_b_analysis;
select user, host, plugin
from mysql.user;
alter user 'root'@'localhost'
identified by '071104';
show tables;
rename table  customer_be_analy to customer; 
select * from customer;
alter table customer
rename column purchase_amount_usd to amount;
-- find the revenue generated according to the gender
select sum(amount) as 'total_revenue',gender
from customer
group by gender;

-- which customr used discount but paid more than avg amount
select * from customer;
select customer_id
where discount is not null and amount>(select avg(amount)from customer);
select 