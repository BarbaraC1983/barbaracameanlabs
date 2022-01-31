-- 1. Review tables in the database
show tables from sakila;

-- 2. Explore tables by selecting all columns from each table or using the in built review features for your client.

select * from information_schema.columns
where table_schema = 'sakila'
order by table_name, ordinal_position;alter

-- Select this 2 columns
select table_name, column_name from information_schema.columns
where table_schema = 'sakila'

-- 3. Select one column from a table. Get film titles.
select * from sakila.actor;

-- 4. create new column with the languages ids
select language_id as language from sakila.language;

-- 5.1 Find out how many stores does the company have?
select * from sakila.store;
select count(store_id) from  sakila.store;
-- 5.2 Find out how many employees staff does the company have?
select count(staff_id) from  sakila.staff;
select * from sakila.staff;
-- 5.3 Return a list of employee first names only?
select first_name from sakila.staff;








