-- how does "inner" change join

-- unembellished example
-- returns 599 records
select first_name,
    last_name,
    postal_code
from customer
join address 
ON customer.address_id = address.address_id;

-- add inner. remove "ON"
select first_name,
    last_name,
    postal_code
from customer
inner join address 
-- every record on left matched with every record on right
-- customer = 599 records
-- address = 603
-- 599 * 603 = 361197 records 
-- "inner" makes no difference
-- significant: missing "on"


-- returns 599 records
-- "inner" makes no difference
-- significant: "ON" (overrides inner)
select first_name,
    last_name,
    postal_code
from customer
inner join address 
ON customer.address_id = address.address_id;

-- "," equivalent to "inner join"
-- when no "ON" condition
-- but programmer intent is unclear
select first_name,
    last_name,
    postal_code
from customer, address 

/*
In MySQL, JOIN, CROSS JOIN, and INNER JOIN 
are syntactic equivalents 
-- (they can replace each other). 
-- In standard SQL, they are not equivalent. 
-- INNER JOIN is used with an ON clause, 
-- CROSS JOIN is used otherwise.
https://dev.mysql.com/doc/refman/8.0/en/join.html
*/