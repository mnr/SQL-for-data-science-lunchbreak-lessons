-- REPLACE()	Replace occurrences of a specified string
select first_name,
    replace(first_name, "I", "eye")
from actor