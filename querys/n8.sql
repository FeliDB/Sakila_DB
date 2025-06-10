SELECT 
    i.inventory_id AS "Nro Ejemplar",
    f.title AS "Nombre Película"
FROM 
    rental r
JOIN 
    inventory i ON r.inventory_id = i.inventory_id
JOIN 
    film f ON i.film_id = f.film_id
JOIN 
    store s ON i.store_id = s.store_id
JOIN 
    address a ON s.address_id = a.address_id
JOIN 
    city c ON a.city_id = c.city_id
WHERE 
    EXTRACT(DAY FROM r.rental_date) = 26
    AND c.city = 'Woodridge'
ORDER BY 
    f.title;