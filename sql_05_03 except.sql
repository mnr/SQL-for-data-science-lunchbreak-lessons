/*
EXCEPT: For two query blocks A and B, 
return all results from A which are not also present in B, 
omitting any duplicates.

Each of these set operators supports an ALL modifier. 
When the ALL keyword follows a set operator, 
this causes duplicates to be included in the result. 

All three set operators also support a DISTINCT keyword, 
which suppresses duplicates in the result. 
Since this is the default behavior for set operators, 
it is usually not necessary to specify DISTINCT explicitly.

MySQL 8.0.31 and later
*/


select first_name from actor
EXCEPT
select first_name from customer

-- INTERSECT -- produces 56 records
-- INTERSECT DISTINCT -- 56 records (default)
-- INTERSECT ALL -- 128 records
