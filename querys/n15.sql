SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    f.film_id,
    f.title AS film_title,
    COUNT(*) AS rental_count
FROM 
    rental r
    JOIN customer c ON r.customer_id = c.customer_id
    JOIN inventory i ON r.inventory_id = i.inventory_id
    JOIN film f ON i.film_id = f.film_id
GROUP BY 
    c.customer_id, 
    f.film_id
HAVING 
    COUNT(*) > 1
ORDER BY 
    rental_count DESC;