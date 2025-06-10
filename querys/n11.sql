use sakila;
SELECT 
    f.title AS 'Título de la película',
    COUNT(r.rental_id) AS 'Número de alquileres'
FROM 
    rental r
    JOIN inventory i ON r.inventory_id = i.inventory_id
    JOIN film f ON i.film_id = f.film_id
GROUP BY 
    f.title
ORDER BY 
    COUNT(r.rental_id) DESC
LIMIT 10;