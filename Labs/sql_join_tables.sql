-- 1. Which actor has appeared in the most films?

select a.actor_id, a.first_name, a.last_name, count(*)
from actor as a
inner join film_actor as b
on a.actor_id = b.actor_id
group by actor_id
order by count(*) DESC
limit 1;




-- 2. Most active customer (the customer that has rented the most number of films)

select customer.first_name, customer.last_name, customer.customer_id, count(*)
from customer
inner join rental
on customer.customer_id = rental.customer_id
group by customer_id
order by count(*) DESC
limit 1;

-- 3. List number of films per category.

select a.category_ID,  a.name, count(b.film_ID) as "Number of films" from category as a
inner join film_category as b
on a.category_ID = b.category_ID
group by category_ID
order by count(b.film_ID) DESC;


-- 4. Display the first and last names, as well as the address, of each staff member.

select a.first_name, a.last_name, b.address
from staff as a
inner join address as b
on a.address_id = b.address_id

-- 5. Display the total amount rung up by each staff member in August of 2005.

select a.staff_ID, a.first_name, a.last_name, sum(b.amount) as "Total Amount August 2005"
from staff as a
inner join payment as b
on a.staff_id = b.staff_id
where b.payment_date like "2005-08%"
group by staff_ID

select payment_date from payment

-- 6. List each film and the number of actors who are listed for that film.

select a.film_id,count(a.actor_ID), b.title
from film_actor as a
inner join film as b
on a.film_id = b.film_id
group by a.film_id
order by count(a.actor_ID);


-- 7. Using the tables payment and customer and the JOIN command, list the total paid by each customer.
select a.customer_id, sum(a.amount), b.first_name, b.last_name
from payment as a
inner join customer as b
on a.customer_id = b.customer_id
group by a.customer_id
order by last_name;

-- 7.2 Which is the most rented film?

select title, count(rental_id) from film
inner join inventory
using(film_id)
inner join rental
using(inventory_id)
group by title
order by count(rental_id) desc
limit 1;

select * from film;
select * from rental;
select * from inventory;





