-- Mostrar la segunda pagina (cada una tiene 10 películas) del listado nombre de la película ,
-- lenguaje original y valor de reposición de la películas ordenadas 
-- por su valor de reposición del mas caro al mas barato (10 filas) [LIMIT, OFFSET y ORDER]

use sakila;

SELECT 
film.title,
language.name AS lenguage_original,
replacement_cost AS valor_reposicion
FROM film
JOIN language ON film.language_id = language.language_id
ORDER BY
valor_reposicion DESC
LIM 11 offset 20;





