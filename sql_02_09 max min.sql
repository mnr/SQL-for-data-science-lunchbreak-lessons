# max value of column
SELECT 
    MAX(actor_id),
    MIN(actor_id)
FROM
    actor;
    
# MAX is often used with GROUP BY
SELECT 
    MAX(actor_id),
    MIN(actor_id),
    count(last_name),
    last_name
FROM
    actor
GROUP BY 
	last_name;

# GREATEST/LEAST vs MAX/MIN
# this doesnt work
SELECT 
	inventory_id,
    film_id,
    store_id,
    MAX(film_id, inventory_id, store_id) 
FROM
    inventory

# take-away: 
# MAX/MIN are aggregate functions. (GROUP BY)
# GREATEST/LEAST are comparison operators. (IF...THEN)