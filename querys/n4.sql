USE sakila;

SELECT city.city, country.country  
FROM country  
JOIN city ON country.country_id = city.country_id  
WHERE country.country IN ('AUSTRIA', 'CHILE', 'FRANCE')  
LIMIT 0, 1000;