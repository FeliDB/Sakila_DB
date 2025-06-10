USE sakila;

SELECT 
    film.title AS nombre_pelicula,
    CONCAT(customer.first_name, ' ', customer.last_name) AS nombre_cliente,
    inventory.inventory_id AS nro_ejemplar,
    rental.rental_date AS fecha_alquiler,
    rental.return_date AS fecha_devolucion
FROM
    rental
JOIN customer ON rental.customer_id = customer.customer_id
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film ON inventory.film_id = film.film_id
WHERE 
    rental.return_date IS NOT NULL
    AND DATEDIFF(rental.return_date, rental.rental_date) > 7;
