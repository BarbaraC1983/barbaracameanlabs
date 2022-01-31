-- 1. In the table actor, what last names are not repeated?
select  last_name from actor
group by last_name
having count(last_name)=1;

-- 2. Which last names appear more than once?
select last_name from actor
group by last_name
having count(last_name) >1;

-- 3. Using the rental table, find out how many rentals were processed by each employee.
select staff_id, count(rental_id) from rental
group by staff_id

-- 4. Using the film table, find out how many films were released.
select count(film_id) from film


-- 5. Using the film table, find out how many films there are of each rating.
select count(film_id), rating from film
group by rating

-- 6. What is the mean length of the film for each rating type. Round off the average lengths to two decimal places

select round(avg(length), 2), rating from film
group by rating;

-- 7. Which kind of movies (rating) have a mean duration of more than two hours?

select avg(length), rating from film
group by rating
having avg(length) > 120

select * from film






