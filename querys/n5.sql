USE sakila;

SELECT film.*
FROM film
JOIN language ON film.language_id = language.language_id
WHERE film.length BETWEEN 61 AND 99
  AND language.name = 'French';