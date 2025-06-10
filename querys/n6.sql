USE sakila;

SELECT 
CONCAT(UPPER(first_name), ' ', LOWER(last_name)) AS nombre_completo
FROM actor
WHERE last_name LIKE '%SS%';