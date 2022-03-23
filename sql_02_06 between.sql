SELECT 
    actor_id,
    IF(actor_id BETWEEN 10 AND 20,
        last_update,
        last_name)
FROM
    actor
ORDER BY actor_id;

/*
# here's NOT between
SELECT 
    actor_id,
    IF(actor_id NOT BETWEEN 10 AND 20,
        last_update,
        last_name)
FROM
    actor
ORDER BY actor_id;
*/