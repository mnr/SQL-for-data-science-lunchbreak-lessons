 
SELECT 
	inventory_id,
    film_id,
    store_id,
    GREATEST(film_id, inventory_id, store_id),
    LEAST(film_id, inventory_id, store_id)
FROM
    inventory


# next week...max/min vs greatest/least
