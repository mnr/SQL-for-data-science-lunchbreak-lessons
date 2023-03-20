-- simplest of all joins

select first_name,
    last_name,
    postal_code
from customer
join address 
    ON customer.address_id = address.address_id;

-- add more tables
select first_name,
    last_name,
    city
from customer
join address 
    ON customer.address_id = address.address_id
join city
    on address.city_id = city.city_id
order by city;

-- one more table
-- customers per country
-- in descending order
select 
    country,
    count(country) as population
from customer
join address 
    ON customer.address_id = address.address_id
join city
    on address.city_id = city.city_id
join country
    on city.country_id = country.country_id
group by country
order by population DESC

/*
Only rows with a match are shown in result

In MySQL, JOIN, CROSS JOIN, and INNER JOIN are syntactic equivalents 
-- (they can replace each other). 
-- In standard SQL, they are not equivalent. 
-- INNER JOIN is used with an ON clause, 
-- CROSS JOIN is used otherwise.
https://dev.mysql.com/doc/refman/8.0/en/join.html
*/