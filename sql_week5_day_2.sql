select first_name
from actor;

select first_name, last_name
from actor;

select *
from actor;

select *
from actor
where first_name = 'Nick';



-- % - wildcard operator
select *
from actor
where first_name like 'N%';


--- _ - underscore operator
select *
from actor
where first_name like 'N___'


select *
from actor
where first_name like 'K__%n'


-- > greater than
-- < less than
-- >= greater than or equal to
-- <= less than or equal to
-- <> not equal to


select *
from actor
where first_name > 'Nick'

select *
from actor
where first_name  < 'Nick'

select *
from payment
where amount > 5.99

select *
from payment
where amount < 5.99

select *
from payment p 
where amount <> 5.99

select *
from payment p 
order by amount asc;

select *
from payment p 
order by amount desc;



-- Find all non-zero payment and from largest to smallest
select *
from payment p 
where amount <> 0
order by amount desc;


--- AND and OR operators
select *
from payment p 
where amount > 0.99 and amount < 4.99;


select *
from payment p 
where amount < 1.99 or amount > 3.99;


-- Between operator
select *
from payment p 
where amount between 0.99 and 4.99;


-- Aggregate Functions
-- SUM, AVG, COUNT, MIN, MAX

-- Find the total sum of payments
select sum(amount)
from payment p ;

-- Find the average
select avg(amount)
from payment p ;

-- Find the total amount of payments
select count(amount)
from payment p 

-- Find how many payments have been made above 4.99
select count(*)
from payment p 
where amount > 4.99

-- Find the small payment amount
select min(amount)
from payment p 

-- Find the largest payment amount
select max(amount)
from payment p 

-- Find how many first names appear in the actor table
select count(first_name)
from actor a 

-- Find how many unique first names appear
-- Distinct keyword

select count(distinct first_name)
from actor a 

-- Find those unique names
select distinct first_name, last_name
from actor a 
order by first_name 



select count(*) 
from payment p 
where amount between 3.99 and 4.99


select max(first_name)
from actor a 



select first_name
from actor a 
order by first_name desc 


-- Limit keyword
select first_name
from actor a 
order by first_name desc 
limit 1


select count(*)
from payment p 
where amount = 4.99;



select count(*)
from payment p 
where amount = 5.99;



-- GROUP BY clause
select amount, count(*)
from payment p 
group by amount 



select customer_id, sum(amount) as total_amount_spent
from payment p 
group by customer_id
order by total_amount_spent desc  


-- HAVING clause
select customer_id, sum(amount) as total_amount_spent
from payment p 
group by customer_id
having sum(amount) > 200
order by total_amount_spent desc  





