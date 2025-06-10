use sakila;

SELECT film.*

FROM rental
JOIN customer on rental.customer_id = customer.customer_id
JOIN inventory on rental.inventory_id = inventory.inventory_id
JOIN film on inventory.film_id = film.film_id

WHERE customer.first_name = "CARMEN" AND customer.last_name = "OWENS"