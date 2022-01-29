select * from bank.client;

-- 1. Get the id values of the first 5 clients from district_id with a value equals to 1.
select client_id from bank.client
where district_id =1
limit 5;


select * from bank.client
-- 2. In the client table, get an id value of the last client where the district_id equals to 72.
select max(client_id) from bank.client
where district_id = 72
-- 3. Get the 3 lowest amounts in the loan table.
select amount from bank.loan
order by amount asc
limit 3;
-- 4. What are the possible values for status, ordered alphabetically in ascending order in the loan table?
select distinct status from bank.loan
order by status asc
-- 5. What is the loan_id of the highest payment received in the loan table?
select payments, loan_id from bank.loan
order by payments desc
limit 1;

-- 6 What is the loan amount of the lowest 5 account_ids in the loan table? Show the account_id and the corresponding amount
select account_id, amount from bank.loan
order by account_id asc
limit 5;
-- 7. What are the account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?
select account_id, amount , duration from bank.loan
where duration = 60
order by amount asc
limit 5;

-- 8.  What are the unique values of k_symbol in the order table?
select distinct k_symbol from bank.`order`;

-- 9. In the order table, what are the order_ids of the client with the account_id 34?
select order_id, account_id from bank.`order`
where account_id = 34;

-- 10. In the order table, which account_ids were responsible for orders between order_id 29540 and order_id 29560 (inclusive)?

select order_id, account_id from bank.`order`
where order_id 
between 29540  and  29561;

-- 11. In the order table, what are the individual amounts that were sent to (account_to) id 30067122?

select amount, account_to from bank.`order`
where account_to = 30067122


-- 12 In the trans table, show the trans_id, date, type and amount of the 10 first transactions from account_id 793 in chronological order, from newest to oldest.
select trans_id, `date`, `type`, `amount` from bank.trans
where account_id = 793
order by `date` ASC
limit 10;


















