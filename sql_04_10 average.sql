-- average is an aggregate function
select avg(actor_id)
from actor

-- group by first letter of first name
select left(first_name, 1) as thegroups,
    avg(actor_id)
from actor
group by thegroups
order by thegroups