/*
UNION: Combine all results from two query blocks 
into a single result, omitting any duplicates.

Each of these set operators supports an ALL modifier. When the ALL keyword follows a set operator, this causes duplicates to be included in the result. 

All three set operators also support a DISTINCT keyword, which suppresses duplicates in the result. Since this is the default behavior for set operators, it is usually not necessary to specify DISTINCT explicitly.
*/

-- note column name for each select, THEN column name for UNION

select first_name
from actor
UNION 
select last_name
from actor

-- UNION -- produces 249 records
-- UNION DISTINCT -- 249 records (default)
-- UNION ALL -- 400 records
