-- RPAD()	Append string the specified number of times
-- LPAD()	Return the string argument, left-padded with the specified string

select 
    rpad(first_name, 12, "_"),
    actor_id,
    lpad(actor_id,5,"0")
from actor