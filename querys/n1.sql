USE sakila;
SELECT 
    f.title AS nombre_pelicula,
    l.name AS idioma_original,
    r.rental_date AS fecha_alquiler,
    r.return_date AS fecha_devolucion
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
JOIN language l ON f.language_id = l.language_id
WHERE c.first_name = 'BARBARA' AND c.last_name = 'JONES';