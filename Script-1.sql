-- 1. How many actors are there with the last name ‘Wahlberg’?

select first_name, last_name
from actor 
where last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?

select * 
from payment;

select * -- what u want to grab     select all              
from payment --from what table     from the payment table
where amount between 3.99 and 5.99; -- a description/guidelines     

--there are 5,568 payments

-- 3. What film does the store have the most of? (search in inventory)
select film_id, inventory_id
from inventory
order by film_id desc;


-- 4. How many customers have the last name ‘William’?

select first_name, last_name
from customer
where last_name = 'william';
--no william


-- 5. What store employee (get the id) sold the most rentals?

select staff_id, count(staff_id)
from payment
group by staff_id #groups them all together
order by count(staff_id);
--answer employee staff_id 1

-- 6. How many different district names are there?

select count(distinct district)--count of each distinct adress
from address;
--378 distinct districts

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
select count(actor_id), film_id --column/ count returns # of rows that match actor_id
from film_actor --table
group by film_id -- group by: finding how many actors in each film id, ex: how many ppl in 1 state
order by count(actor_id) desc; -- count(actor_id) to see the count of all actor ids
-- 508 has most actors in it

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

select store_id, last_name
from customer
where last_name like '%es'
--21 customers


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
select rental_id
from payment
where rental_id between 380 and 430;
-- not sure

-- 10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
select count (rating), rating
from film
group by rating
order by rating asc;
-- 5 cats, pg-13 has most 

