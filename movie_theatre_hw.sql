--- 1.)


select *
from actor a 
where last_name = 'Wahlberg'

---- 2 names with last name Wahlberg


select count(*) 
from actor a 
where last_name = 'Wahlberg'


---- 2.)
select count(*) 
from payment p 
where amount between 3.99 and 5.99


-----3.)
select film_id, count(film_id)
from inventory i 
group by film_id 
order by count(film_id) desc 



----4.)
select count(*)  
from customer c 
where last_name = 'William'


select count(last_name)
from customer c 
where last_name = 'Williams'




----5.)
select staff_id, count(rental_id)
from rental r 
group by staff_id 
order by count(rental_id) desc 






----6.)
select count(distinct district)
from address a 


----7.)
select film_id, count(actor_id)
from film_actor fa  
group by film_id  
order by count(actor_id) desc 


---8.)

select count(last_name), store_id 
from customer c 
where last_name like '%es' and store_id = 1
group by store_id 



---9.)
select count(amount), rental_id, customer_id
from payment
where customer_id between 380 and 430
group by customer_id, rental_id, amount
having count(amount) > 250



--10.)
select count(distinct rating)
from film f 

-- 5 ratings

select rating, count(rating)
from film f 
group by rating  
order by count(rating) desc 







