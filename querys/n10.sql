use sakila;

SELECT
	film.title as nombre_pelicula,
    film.film_id as numero_ejemplar,
    customer.first_name as nombre_quien_la_alquilo,
    rental.rental_date as fecha_alquiler

FROM rental
JOIN customer on rental.customer_id = customer.customer_id
JOIN inventory on rental.inventory_id = inventory.inventory_id
JOIN film on inventory.film_id = film.film_id
WHERE rental.return_date IS NULL