-- find least popular films
-- this result is missing films with zero rentals
select title,
    count(rental_id) as rentals
from film
join inventory on film.film_id = inventory.film_id
join rental on inventory.inventory_id = rental.inventory_id
group by film.film_id
order by rentals 

-- left join preserves all entries of film

-- 1000 entries
select title
from film

-- 4623 entries
-- without left join 4581 entries
select title
from film
left join inventory on film.film_id = inventory.film_id

-- 16087 entries
-- 16044 without left join 
select title, rental_id
from film
left join inventory on film.film_id = inventory.film_id
left join rental on inventory.inventory_id = rental.inventory_id

-- back to 1000 entries (group by film_id)
select title,
    count(rental_id) as rentals
from film
left join inventory on film.film_id = inventory.film_id
left join rental on inventory.inventory_id = rental.inventory_id
group by film.film_id
order by rentals 

