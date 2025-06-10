use sakila;

SELECT
    film.title AS nombre_pelicula,
    UPPER(language.name) AS idioma_pelicula
FROM film
JOIN language ON film.language_id = language.language_id
WHERE film.language_id = 4
ORDER BY film.title ASC;